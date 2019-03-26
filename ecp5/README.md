ECP5 benchmarks for [nextpnr](https://github.com/YosysHQ/nextpnr).

Benchmarks
==========

The benchmarks currently used in this repository are:

design01 (45k)
---------------

This is the "attosoc" system-on-chip for the Versa-5G board.

design02 (45k)
---------------------

This is a LiteX and SpinalHDL generated VexRiscv SoC with Ethernet and DDR3 for the Versa-5G board.

design03 (25k, 85k)
---------------------

Font rendering and TMDS encoding for the ULX3S.


Guidelines for submitting benchmarks
====================================

Submit your benchmarks using [github issues](https://github.com/YosysHQ/nextpnr-bench/issues/new).
Just upload a `.zip` file with the relevant data and a include a short
description of the benchmark in the issue description.

The benchmark should be a design using a single clock domain. The HDL code should be a single
synthesizable Verilog (`.v`) file. The name of the top module should be `top`.
The `.zip` may contain additional `.hex` files to be read using `$readmemh` in
the Verilog code. The `.zip` should also contain a `.lpf` file for one or more
ECP5 target devices.

Benchmarks should be real-world designs, not "hello world" examples or synthetic benchmarks.
