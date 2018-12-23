iCE40 benchmarks for [nextpnr](https://github.com/YosysHQ/nextpnr).

Display archived benchmark results with nbviewer:
- [20181223-ice40-e76479f.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/20181223-ice40-e76479f.ipynb) (latest)
- [20181114-ice40-3b2b15d.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/20181114-ice40-3b2b15d.ipynb)
- [20181111-ice40-b8870bb.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/20181111-ice40-b8870bb.ipynb)
- [20180811-ice40-2e02f2d.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/20180811-ice40-2e02f2d.ipynb)
- [20180808-ice40-b326b03.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/20180808-ice40-b326b03.ipynb)
- [20180804-ice40-528eddc.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/20180804-ice40-528eddc.ipynb)
- [20180803-ice40-f9a9da6.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/20180803-ice40-f9a9da6.ipynb)
- [20180801-ice40-f041f01.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/20180801-ice40-f041f01.ipynb)

Analysis of time evolution of the archived benchmark results: [analyse.ipynb](https://nbviewer.jupyter.org/github/YosysHQ/nextpnr-bench/blob/master/ice40/reports/analyse.ipynb)


Benchmarks
==========

The benchmarks currently used in this repository are:

design01 (hx8k)
---------------

This is the iCE40HX8K example design for [PicoSoC](https://github.com/cliffordwolf/picorv32/tree/master/picosoc). This
includes a version of PicoRV32.

design02 (hx1k, hx8k)
---------------------

This is the [J1a](https://github.com/jamesbowman/swapforth/tree/master/j1a) 16-bit SwapForth processor.

design03 (up5k)
---------------

A [port of the MIST NES core to ice40](https://github.com/daveshah1/up5k-demos/tree/master/nes).


Guidelines for submitting benchmarks
====================================

Submit your benchmarks using [github issues](https://github.com/YosysHQ/nextpnr-bench/issues/new).
Just upload a `.zip` file with the relevant data and a include a short
description of the benchmark in the issue description.

The benchmark should be a design using a single clock domain. The HDL code should be a single
synthesizable Verilog (`.v`) file. The name of the top module should be `top`.
The `.zip` may contain additional `.hex` files to be read using `$readmemh` in
the Verilog code. The `.zip` should also contain a `.pcf` file for one or more
iCE40 target devices.

Benchmarks should be real-world designs, not "hello world" examples or synthetic benchmarks.
