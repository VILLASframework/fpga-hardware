#include "ap_int.h"
#include "hls_stream.h"

struct axis {
	float data;
	ap_uint<1> last;
};

#define N 32

void hls_multiply(hls::stream<axis> &input, hls::stream<axis> &output, float factors[N]) {
	#pragma HLS INTERFACE ap_ctrl_none port=return
	#pragma HLS INTERFACE axis port=input,output
	#pragma HLS INTERFACE s_axilite port=factors bundle=config
	#pragma HLS DATAFLOW

	static ap_uint<8> i;

	while(!input.empty()) {
		axis in, out;

		input >> in;

		out.data = in.data * factors[i++ % 10];
		out.last = in.last;

		output << out;

		if (in.last)
			i = 0;
	}
}
