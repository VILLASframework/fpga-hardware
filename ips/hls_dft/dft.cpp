/** Recursive dft() and idft()
 *
 * @author Steffen Vogel <stvogel@eonerc.rwth-aachen.de>
 * @copyright 2015-2016, Steffen Vogel
 *   This file is part of S2SS. All Rights Reserved. Proprietary and confidential.
 *   Unauthorized copying of this file, via any medium is strictly prohibited.
 **********************************************************************************/

#include <iostream>
#include <complex>

#include <hls_math.h>
#include <ap_shift_reg.h>

#include "dft.h"

/* Single precision pi constant becuase M_PI is double! */
const float pi = 3.141592653589793238462643383279502884f;

void hls_dft(stream<axis> &input, stream<axis> &output, float fharmonics[MAX_HARMONICS], ap_int<8> num_harmonics, ap_int<8> decimation) {
	#pragma HLS INTERFACE s_axilite port=return,fharmonics,num_harmonics,decimation bundle=ctrl
	#pragma HLS INTERFACE axis port=input,output
	#pragma HLS STREAM depth=64 variable=input,output
	#pragma HLS DATAFLOW

	/** Previous coefficients for incremental update */
	static complex<float> coeffs[MAX_HARMONICS];

	/* Time */
	static float t;
	static ap_int<32> decimation_cnt;

	/** Sliding window of samples */
	static ap_shift_reg<float,NSAMPLES> windows[MAX_VALUES];

	/** AXI Stream signals */
	axis real, imag, refph;

LOOP_VALUES:
	for (int index = 0; index < MAX_VALUES; index++) {
		/* Read real-valued time-domain data from AXI Stream interface */
		axis in = input.read();

		/* Shift and get data from SLR */
		float newest = in.data;
		float oldest = windows[index].shift(newest, NSAMPLES-1);

LOOP_HARMONICS:
		for (int i = 0; i < num_harmonics; i++) {
			#pragma HLS PIPELINE II=2

			float pi_fharm = 2.0f * pi * fharmonics[i];

			/* Recursive update */
			coeffs[i] = polar<float>(1.0f, pi_fharm) * (coeffs[i] + (newest - oldest));

			/* Correction for stationary phasor */
			complex<float> correction = polar<float>(1.0f, pi_fharm * (t - (NSAMPLES + 1)));
			complex<float> result = 2.0f / NSAMPLES * coeffs[i] / correction;

			/* DC component */
			if (i == 0)
				result /= 2.0f;

			/* Update real part */
			real.data = result.real();
			real.last = 0;

			/* Update imaginary part */
			imag.data = result.imag();
			imag.last = 0;

			/* Only every'th decimation_cnt'th sample will be sent via AXI4-Stream */
			if (decimation_cnt == 0) {
				output.write(real);
				output.write(imag);
			}
		}

		if (in.last)
			break; /* start next packet */
	}

	/* The decimation_cnt suppresses the output of results */
	if (decimation_cnt == 0) {
		decimation_cnt = decimation;

		/* Last word on AXI-Stream bus is the reference phase */
		refph.data = t++;
		refph.last = 1;
		output.write(refph);
	}
	else
		decimation_cnt--;
}

void hls_idft(hls::stream<axis> &input, hls::stream<axis> &output, float fharmonics[MAX_HARMONICS], ap_int<8> num_harmonics) {
	#pragma HLS INTERFACE s_axilite port=return,fharmonics,num_harmonics bundle=ctrl
	#pragma HLS INTERFACE axis port=input,output
	#pragma HLS STREAM depth=64 variable=input,output
	#pragma HLS dataflow

	axis out, real, imag;
	complex<float> coeff, phasor;

	static ap_int<32> t = 0;

LOOP_VALUES:
	for (int index = 0; index < MAX_VALUES; index++) {
		#pragma HLS PIPELINE

		complex<float> value(0, 0);
		float phase_offset;

LOOP_HARMONICS:
		for (int i = 0; i < num_harmonics; i++) {

			/* Read complex-valued DFT coefficients from AXI Stream interface */
			input.read(real);
			input.read(imag);

			coeff  = complex<float>(real.data, imag.data);
			phasor = polar<float>(1.0f, 2.0f * pi * t * fharmonics[i]);

			value += phasor * coeff;
		}

		out.data = value.real();
		out.last = imag.last || real.last;

		/** Write real-valued time-domain data to AXI Stream interface */
		output.write(out);

		if (imag.last == 1)
			break; /* This was the last value for this sample. */
	}

	t++;
}

