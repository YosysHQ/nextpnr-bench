SHELL = /bin/bash

reports::
clean::

define mk
reports:: design$(1)-$(2)-$(3)-arachne.rpt design$(1)-$(2)-$(3)-nextpnr.rpt

clean::
	rm -f design$(1)-$(2)-$(3)-arachne.rpt design$(1)-$(2)-$(3)-nextpnr.rpt
	rm -f design$(1)-$(2)-$(3)-arachne.asc design$(1)-$(2)-$(3)-nextpnr.asc
	rm -f design$(1)-$(2)-$(3)-arachne.log design$(1)-$(2)-$(3)-nextpnr.log
	rm -f design$(1)-yosys.log design$(1).blif design$(1).json

design$(1)-$(2)-$(3)-arachne.rpt: design$(1)-$(2)-$(3)-arachne.asc
	-icetime -m -r design$(1)-$(2)-$(3)-arachne.rpt -d $(2) design$(1)-$(2)-$(3)-arachne.asc

design$(1)-$(2)-$(3)-nextpnr.rpt: design$(1)-$(2)-$(3)-nextpnr.asc
	-icetime -m -r design$(1)-$(2)-$(3)-nextpnr.rpt -d $(2) design$(1)-$(2)-$(3)-nextpnr.asc

design$(1)-$(2)-$(3)-arachne.asc: design$(1).blif design$(1)-$(2).pcf
	arachne-pnr -d $(subst hx,,$(subst lp,,$(subst up,,$(2)))) -p design$(1)-$(2).pcf -o design$(1)-$(2)-$(3)-arachne.asc -s 1$(3) design$(1).blif 2>&1 | ts -s '=%s=' > design$(1)-$(2)-$(3)-arachne.log

design$(1)-$(2)-$(3)-nextpnr.asc: design$(1).json design$(1)-$(2).pcf
	nextpnr-ice40 --$(2) --pcf design$(1)-$(2).pcf --asc design$(1)-$(2)-$(3)-nextpnr.asc --seed 1$(3) --json design$(1).json 2>&1 | ts -s '=%s=' > design$(1)-$(2)-$(3)-nextpnr.log

ifndef design_ys_$(1)
design_ys_$(1) = 1
design$(1).blif: design$(1).json
design$(1).json: design$(1).v
	yosys -ql design$(1)-yosys.log -p 'synth_ice40 -top top -blif design$(1).blif -json design$(1).json' design$(1).v
endif
endef

$(foreach i,0 1 2 3 4 5 6 7 8 9,$(eval $(call mk,01,hx8k,$(i))))
$(foreach i,0 1 2 3 4 5 6 7 8 9,$(eval $(call mk,02,hx1k,$(i))))
$(foreach i,0 1 2 3 4 5 6 7 8 9,$(eval $(call mk,02,hx8k,$(i))))
$(foreach i,0 1 2 3 4 5 6 7 8 9,$(eval $(call mk,03,up5k,$(i))))
