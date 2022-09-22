/** Testbench for dft() and idft()
 *
 * @author Steffen Vogel <stvogel@eonerc.rwth-aachen.de>
 * @copyright 2015-2022, Steffen Vogel
 *   This file is part of S2SS. All Rights Reserved. Proprietary and confidential.
 *   Unauthorized copying of this file, via any medium is strictly prohibited.
 **********************************************************************************/

#include <iostream>
#include <fstream>
#include <complex>

#include <cstdlib>
#include <time.h>

#include "dft.h"
#include "utils.h"

const int NUM_VALUES = 1;
const int NUM_SAMPLES = 3 * NSAMPLES;

#define DIR "D:\\svo\\gtfpga\\hls\\hls_dft"

int generate_test_data(fstream &file, map<int,complex<float> > &harmonics)
{
	Sine signal = Sine(harmonics, NSAMPLES);

	time_t tm = time(NULL);
	file << "# Generated at " << ctime(&tm);

	// Generate input file / data
	for (int i = 0; i < NUM_SAMPLES; i++) {
		for (int j = 0; j < NUM_VALUES; j++) {
			file << setprecision(12) << real(signal(i));

			if (j == NUM_VALUES-1)
				file << endl;
			else
				file << "\t";
		}
	}
}

int read_harmonics(fstream &file, map<int,complex<float> > &harmonics)
{
	file.seekg(0);

	while (!file.eof()) {
		int order;
		float ampl, phase;

		string line;
		getline(file, line);

		stringstream lineStream(line);

		lineStream >> order >> ampl >> phase;

		harmonics[order] = polar<float>(ampl, phase);
	}

	return 0;
}

int read_data(fstream &file, hls::stream<axis> &stream)
{
	file.seekg(0);

	while (!file.eof()) {
		float value;
		string line;

		getline(file, line);

		stringstream lineStream(line);

		// Fill input stream with data for one AXI Stream packet
		while (lineStream >> value) {
			axis d;

			d.data = value;
			d.last = lineStream.eof() ? 1 : 0;

			stream.write(d);
		}
	}

	return 0;
}

int write_data(fstream &file, hls::stream<axis> &stream)
{
	time_t tm = time(NULL);
	file << "# Generated at " << ctime(&tm);

	while (!stream.empty()) {
		axis d;

		stream.read(d);

		file << setprecision(12) << d.data;

		if (d.last == 1)
			file << endl;
		else
			file << "\t";
	}

	return 0;
}

int main(int argc, char *argv[])
{
	fstream input, coeffs, harm, output;
	hls::stream<axis> in, out_a, out_b, out_c;
	map<int,complex<float> > ref_harmonics;

	harm.open(DIR "\\harmonics.dat", fstream::in);
	input.open(DIR "\\input.dat", fstream::out | fstream::in | fstream::trunc);
	output.open(DIR "\\output.dat", fstream::out);
	coeffs.open(DIR "\\coeffs.dat", fstream::out | fstream::in | fstream::trunc);

	read_harmonics(harm, ref_harmonics);
	generate_test_data(input, ref_harmonics);

	float dft_harmonics[] = { 0.0f / NSAMPLES, 1.0f / NSAMPLES, 3.0f / NSAMPLES, 5.0f / NSAMPLES, 7.0f / NSAMPLES };
	ap_int<8> num_harmonics = 5;

	read_data(input, in);

	// Do forward transform
	while (!in.empty())
		hls_dft(in, out_a, dft_harmonics, num_harmonics, 0);

	write_data(coeffs, out_a);

	read_data(coeffs, out_b);

	// Do reverse transform
	while (!out_b.empty())
		hls_idft(out_b, out_c, dft_harmonics, num_harmonics);

	write_data(output, out_c);

	input.close();
	output.close();
	coeffs.close();

	return 0;
}
