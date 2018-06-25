#!/bin/sh

while inotifywait -e close_write gnuplot.script solution1/csim/build/; do
	gnuplot gnuplot.script
done
