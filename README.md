# <img src="doc/pictures/villas_fpga.png" width=40 /> VILLASfpga

This directory contains HDL projects for Virtex 5 (ML507) / Virtex 6 (ML605) based FPGA evaluation boards which can be used to exchange sample values with an RTDS simulator.

## Structure

- `xsg` Xilinx System Generator files
- `ips`
  - `rtds_axis` An AXI4-Stream to RTDS_InterfaceModule interface
  - `axi_pcie_intc`
  - `pcie_msi_requester`
  - `hdl_multiply` An AXI4-Stream floating point multiplier implemented in VHDL
  - `hls_multiply` An AXI4-Stream floating point multiplier implemented in HLS
  - `hls_decimate` An AXI4-Stream decimation / downsampler
  - `hls_dft` An AXI4-Stream discrete fourier transformation
  - `ibufds_gte2` A GTE2 IBUFDS block for Xilinx IP integrator
- `rscad`
    Some example RSCAD drafts to test the S2SS <-> RTDS interface.
- `vc707` Xilinx VC707 Virtex 7 Evaluation Board
  - `vc707_pcie`
  - `vc707_villas`
  - `vc707_villas_simple`
  - `vc707_prom_flasher`
  - `aurora_rtds` Vivado project for Aurora <-> RTDS link with VC707

## Copyright

2017-2019, Institute for Automation of Complex Power Systems, EONERC

## License

This project is released under the terms of the [GPL version 3](COPYING.md).

```
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
```

For other licensing options please consult [Prof. Antonello Monti](mailto:amonti@eonerc.rwth-aachen.de).

## Contact

[![EONERC ACS Logo](doc/pictures/eonerc_logo.png)](http://www.acs.eonerc.rwth-aachen.de)

 - Steffen Vogel <stvogel@eonerc.rwth-aachen.de>
 - Daniel Krebs <daniel.krebs1@eonerc.rwth-aachen.de>
 - Hatim Kanchwala <hatim@hatimak.me>

[Institute for Automation of Complex Power Systems (ACS)](http://www.acs.eonerc.rwth-aachen.de)
[EON Energy Research Center (EONERC)](http://www.eonerc.rwth-aachen.de)
[RWTH University Aachen, Germany](http://www.rwth-aachen.de)
