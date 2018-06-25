/** Recursive dft() and idft()
 *
 * @file
 * @author Steffen Vogel <stvogel@eonerc.rwth-aachen.de>
 * @copyright 2015-2016, Steffen Vogel
 *   This file is part of S2SS. All Rights Reserved. Proprietary and confidential.
 *   Unauthorized copying of this file, via any medium is strictly prohibited.
 **********************************************************************************/

#ifndef _DFT_H_
#define _DFT_H_

#include <ap_int.h>
#include <hls_stream.h>

using namespace std;
using namespace hls;

struct axis {
	float data;
	ap_uint<1> last;
};

/** DFT window period (1 / fundamental-frequency) */
const float PERIOD = 1.0 / 50; // in sec

/** Simulation timestep (1 / sample-rate) */
const float TIMESTEP = 50e-6; // in sec

/** Number of samples in a window */
const int NSAMPLES = 400;//PERIOD / TIMESTEP;

/** Number of values per sample */
const int MAX_VALUES = 8;

/** Number of harmonics */
const int MAX_HARMONICS = 16;

/** Recursive DFT
 *
 * @param input AXI4-Stream input of sample data in time-domain
 * @param output AXI4-Stream output of coefficients
 * @param fharmonics
 * @param num_harmonics
 * @param decimation
 */
void hls_dft(stream<axis> &input, stream<axis> &output, float fharmonics[MAX_HARMONICS], ap_int<8> num_harmonics, ap_int<8> decimation);

/** Inverse Recursive DFT */
void hls_idft(stream<axis> &input, stream<axis> &output, float fharmonics[MAX_HARMONICS], ap_int<8> num_harmonics);

#endif /* _DFT_H_ */
