#!/usr/bin/env python3

import re

designs = """
    design01-hx8k
    design02-hx1k
    design02-hx8k
    design03-up5k
""".split()

tools = """
    arachne
    nextpnr
""".split()

for d in designs:
    for t in tools:
        for i in range(10):
            error = False
            maxfreq = None
            estmaxfreq = None
            runtime = None
            runtime_place = None
            runtime_route = None
            with open("%s-%s-%d.log" % (d, t, i), "r") as f:
                for line in f:
                    match = re.match(r"=(\d+)= (.*\S)", line)
                    if match:
                        runtime = int(match.group(1))
                        line = match.group(2)
                        if t == "arachne":
                            if "After placement:" in line:
                                runtime_place = runtime
                            if "error:" in line:
                                print("ERROR %s %s %d %s" % (d, t, i, line))
                                error = True
                        if t == "nextpnr":
                            if "starting routing procedure" in line:
                                runtime_place = runtime
                            if "Info: estimated Fmax = " in line:
                                estmaxfreq = float(line.split()[4])
                            if "ERROR" in line:
                                print("ERROR %s %s %d %s" % (d, t, i, line))
                                error = True
            if not error:
                with open("%s-%s-%d.rpt" % (d, t, i), "r") as f:
                    for line in f:
                        if line.startswith("Total path delay:"):
                            line = line.split()
                            maxfreq = 1000 / float(line[3])
                if maxfreq is None:
                    maxfreq = 0
                    runtime = 30*60
                if estmaxfreq is None:
                    estmaxfreq = 0
                if runtime_place is not None:
                    runtime_route = runtime - runtime_place
                if runtime is None:
                    runtime = 0
                if runtime_place is None:
                    runtime_place = 0
                if runtime_route is None:
                    runtime_route = 0
                print("DATA %s %s %d %6.2f %6.2f %d %d %d" % (d, t, i, maxfreq, estmaxfreq, runtime, runtime_place, runtime_route))
