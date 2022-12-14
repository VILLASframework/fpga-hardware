/** Testbench for dft() and idft()
 *
 * @author Steffen Vogel <post@steffenvogel.de>
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



int read_data(std::fstream &file, hls::stream<axis> &stream)
{
	file.seekg(0);

	while (!file.eof()) {
		float value;
		std::string line;

		std::getline(file, line);

		std::stringstream lineStream(line);

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

int write_data(std::fstream &file, hls::stream<axis> &stream)
{
	time_t tm = time(NULL);
	file << "# Generated at " << ctime(&tm);

	while (!stream.empty()) {
		axis d;

		stream.read(d);

		file << std::setprecision(12) << d.data;

		if (d.last == 1)
			file << std::endl;
		else
			file << "\t";
	}

	return 0;
}

int main(int argc, char *argv[])
{
	hls::stream<axis> in, out;

	for (int i = 0; i < 100; i++) {
		for (int j = 0; j < 5; j++) {
			struct axis d = {
				.data = i << 8 + j,
				.last = (j == 4) ? 1 : 0
			};

			in.write(d);
		}
	}

	while (!in.empty())
		dft(in, out_a);

	return 0;
}
