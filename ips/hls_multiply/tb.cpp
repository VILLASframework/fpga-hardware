#include <iostream>

#include "ap_int.h"
#include "hls_stream.h"

using namespace hls;
using namespace std;

struct axis {
	float data;
	ap_uint<1> last;
};

#define N 32
void hls_multiply(stream<axis> &input, stream<axis> &output, float factors[N]);

int main(int argc, char *argv[])
{
	float factors[] = { 1.1, 2.2, 3.3, 4.4, 5.5 };

	stream<axis> input, output;

	for (int i = 0; i < 10; i++) {
		axis word = { i+1, i%3==0 };
		input.write(word);
	}

	hls_multiply(input, output, factors);

	while (!output.empty()) {
		axis word = output.read();

		cout << word.data << " " << word.last << endl;
	}
}
