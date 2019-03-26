SHELL = /bin/bash

report.dat: reports/report.py reports
	python3 reports/report.py > report.dat

clean::
	rm -f report.dat

define mk
reports:: design$(1)-$(2)-nextpnr-$(3).log

clean::
	rm -f design$(1)-$(2)-nextpnr-$(3).config
	rm -f design$(1)-$(2)-nextpnr-$(3).log
	rm -f design$(1)-yosys.log design$(1).json

design$(1)-$(2)-nextpnr-$(3).log: design$(1).json design$(1)-$(2).lpf
	-timeout 30m nextpnr-ecp5 --$(2) --lpf design$(1)-$(2).lpf --textcfg design$(1)-$(2)-nextpnr-$(3).config --seed 1$(3) --freq $(4) --json design$(1).json 2>&1 | ts -s '=%s=' > design$(1)-$(2)-nextpnr-$(3).log

ifndef design_ys_$(1)
design_ys_$(1) = 1
design$(1).json: design$(1).v
	yosys -ql design$(1)-yosys.log -p 'synth_ecp5 -top top -json design$(1).json' design$(1).v
endif
endef

iters = 0 1 2 3 4 5 6 7 8 9
$(foreach i,$(iters),$(eval $(call mk,01,um5g-45k,$(i),50)))
$(foreach i,$(iters),$(eval $(call mk,02,um5g-45k,$(i),50)))
$(foreach i,$(iters),$(eval $(call mk,03,25k,$(i),50)))
$(foreach i,$(iters),$(eval $(call mk,03,85k,$(i),50)))
