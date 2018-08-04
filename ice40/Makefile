SHELL = /bin/bash

report.dat: report.py reports
	python3 report.py > report.dat

define mk
reports:: design$(1)-$(2)-arachne-$(3).rpt design$(1)-$(2)-nextpnr-$(3).rpt

clean::
	rm -f design$(1)-$(2)-arachne-$(3).rpt design$(1)-$(2)-nextpnr-$(3).rpt
	rm -f design$(1)-$(2)-arachne-$(3).asc design$(1)-$(2)-nextpnr-$(3).asc
	rm -f design$(1)-$(2)-arachne-$(3).log design$(1)-$(2)-nextpnr-$(3).log
	rm -f design$(1)-yosys.log design$(1).blif design$(1).json

design$(1)-$(2)-arachne-$(3).rpt: design$(1)-$(2)-arachne-$(3).asc
	-icetime -m -r design$(1)-$(2)-arachne-$(3).rpt -d $(2) design$(1)-$(2)-arachne-$(3).asc

design$(1)-$(2)-nextpnr-$(3).rpt: design$(1)-$(2)-nextpnr-$(3).asc
	-icetime -m -r design$(1)-$(2)-nextpnr-$(3).rpt -d $(2) design$(1)-$(2)-nextpnr-$(3).asc

design$(1)-$(2)-arachne-$(3).asc: design$(1).blif design$(1)-$(2).pcf
	-timeout 30m arachne-pnr -d $(subst hx,,$(subst lp,,$(subst up,,$(2)))) -p design$(1)-$(2).pcf -o design$(1)-$(2)-arachne-$(3).asc -s 1$(3) design$(1).blif 2>&1 | ts -s '=%s=' > design$(1)-$(2)-$(3)-arachne.log

design$(1)-$(2)-nextpnr-$(3).asc: design$(1).json design$(1)-$(2).pcf
	-timeout 30m nextpnr-ice40 --$(2) --pcf design$(1)-$(2).pcf --asc design$(1)-$(2)-nextpnr-$(3).asc --seed 1$(3) --json design$(1).json 2>&1 | ts -s '=%s=' > design$(1)-$(2)-nextpnr-$(3).log

ifndef design_ys_$(1)
design_ys_$(1) = 1
design$(1).blif: design$(1).json
design$(1).json: design$(1).v
	yosys -ql design$(1)-yosys.log -p 'synth_ice40 -top top -blif design$(1).blif -json design$(1).json' design$(1).v
endif
endef

iters = 0 1 2 3 4 5 6 7 8 9
$(foreach i,$(iters),$(eval $(call mk,01,hx8k,$(i))))
$(foreach i,$(iters),$(eval $(call mk,02,hx1k,$(i))))
$(foreach i,$(iters),$(eval $(call mk,02,hx8k,$(i))))
$(foreach i,$(iters),$(eval $(call mk,03,up5k,$(i))))
