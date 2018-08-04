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
                                print("%s %s %d ERROR %s" % (d, t, i, line))
                                error = True
                        if t == "nextpnr":
                            if "starting routing procedure" in line:
                                runtime_place = runtime
                            if "ERROR" in line:
                                print("%s %s %d ERROR %s" % (d, t, i, line))
                                error = True
            if not error:
                with open("%s-%d-%s.rpt" % (d, i, t), "r") as f:
                    for line in f:
                        if line.startswith("Total path delay:"):
                            line = line.split()
                            maxfreq = 1000 / float(line[3])
                if maxfreq is None:
                    maxfreq = 0
                    runtime = 30*60
                if runtime_place is not None:
                    runtime_route = runtime - runtime_place
                runtime = 0 if runtime is None else runtime
                runtime_place = 0 if runtime_place is None else runtime_place
                runtime_route = 0 if runtime_route is None else runtime_route
                print("%s %s %d DATA %6.2f %d %d %d" % (d, t, i, maxfreq, runtime, runtime_place, runtime_route))
