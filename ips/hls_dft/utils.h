/** Helper functions for dft() and idft()
 *
 * @file
 * @author Steffen Vogel <stvogel@eonerc.rwth-aachen.de>
 * @copyright 2015-2022, Steffen Vogel
 *   This file is part of S2SS. All Rights Reserved. Proprietary and confidential.
 *   Unauthorized copying of this file, via any medium is strictly prohibited.
 **********************************************************************************/

#ifndef _UTILS_H_
#define _UTILS_H_

#include <map>
#include <cmath>
#include <complex>

#include "dft.h"

using namespace std;

// Generate complex sine waves with harmonics
class Sine {
public:
	Sine(const map<int,complex<float> > &h, int p) :
		harmonics(h),
		period(p)
	{ }

	complex<float> operator()(int t)
	{
		complex<float> result(0, 0);

		map<int,complex<float> >::iterator it;
		for (it = harmonics.begin(); it != harmonics.end(); it++) {
			complex<float> phasor = it->second;
			int k 			      = it->first;

			result += phasor * polar<float>(1, 2.0 * M_PI * k * t / period);
		}

		return result;
	}

protected:
	map<int,complex<float> > harmonics;
	int period;
};

#endif // _UTILS_H_
