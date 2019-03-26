#!/usr/bin/env python3

import re
import sys

designs = """
    design01-um5g-45k
    design02-um5g-45k
    design03-25k
    design03-85k
""".split()

tools = """
    nextpnr
""".split()

if __name__== "__main__":
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
                            if t == "nextpnr":
                                if ("starting routing procedure" in line) or line.endswith("Info: Routing.."):
                                    runtime_place = runtime
                                if runtime_place is not None:
                                    if "Info: Max frequency " in line:
                                        freq = float(line.split()[-6])
                                        if estmaxfreq is None:
                                            estmaxfreq = freq
                                        estmaxfreq = min(estmaxfreq, freq)
                                    if "Info: Max delay " in line:
                                        freq = 1000.0 / float(line.split()[-2])
                                        if estmaxfreq is None:
                                            estmaxfreq = freq
                                        estmaxfreq = min(estmaxfreq, freq)
                                if "ERROR" in line:
                                    print("ERROR %s %s %d %s" % (d, t, i, line))
                                    error = True
                if not error:
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
                    print("DATA %s %s %d %6.2f %d %d %d" % (d, t, i, estmaxfreq, runtime, runtime_place, runtime_route))
    sys.exit(0)

#####################################################################

import numpy as np
import matplotlib.pyplot as plt

class DataEntry:
    __slots__ = ["estmaxfreq", "runtime", "runtime_place", "runtime_route", "errors"]

    def __init__(self, estmaxfreq=0.0, runtime=0, runtime_place=0, runtime_route=0, errors=None):
        self.estmaxfreq = estmaxfreq
        self.runtime = runtime
        self.runtime_place = runtime_place
        self.runtime_route = runtime_route
        self.errors = errors

    def add_data(self, estmaxfreq, runtime, runtime_place, runtime_route):
        self.estmaxfreq = float(estmaxfreq)
        self.runtime = int(runtime)
        self.runtime_place = int(runtime_place)
        self.runtime_route = int(runtime_route)

    def add_error(self, s):
        if self.errors is None:
            self.errors = list()
        self.errors.append(s)

    def __getitem__(self, key):
        return getattr(self, key)

    def __repr__(self):
        args = list()
        if self.estmaxfreq != 0.0:
            args.append("estmaxfreq=%.2f" % self.estmaxfreq)
        if self.runtime != 0:
            args.append("runtime=%d" % self.runtime)
        if self.runtime_place != 0:
            args.append("runtime_place=%d" % self.runtime_place)
        if self.runtime_route != 0:
            args.append("runtime_route=%d" % self.runtime_route)
        if self.errors is not None:
            args.append("errors=%s" % self.errors)
        return "DataEntry(%s)" % ", ".join(args)

data = dict()
errors = list()

def load(filename):
    global data
    data = dict()
    with open(filename, "r") as f:
        for line in f:
            line = line.split()
            if line[0] in ("DATA", "ERROR"):
                d, t, i = line[1], line[2], int(line[3])
                if (d, t, i) not in data:
                    data[d, t, i] = DataEntry()
                if line[0] == "ERROR":
                    data[d, t, i].add_error(" ".join(line[4:]))
                    errors.append(" ".join(line))
                if line[0] == "DATA":
                    data[d, t, i].add_data(*line[4:])

#####################################################################

def median(d, t, key):
    vals = list()
    for i in range(10):
        if (d, t, i) not in data:
            continue
        if data[d, t, i].errors is not None:
            continue
        if data[d, t, i][key] == 0:
            continue
        vals.append(data[d, t, i][key])
    vals = sorted(vals)
    if len(vals) == 0:
        return None
    if len(vals) % 2 == 0:
        return (vals[len(vals) // 2 - 1] + vals[len(vals) // 2]) / 2
    else:
        return vals[len(vals) // 2]

#####################################################################

def print_summary():
    print("                  | Max Freq (MHz) | Runtime (M:SS) |")
    print("           design |     nextpnr    |    nextpnr     |")
    print("  ----------------+----------------+--------------- +")

    for idx, d in enumerate(designs):
        maxfreq_nextpnr = median(d, "nextpnr", "estmaxfreq")

        runtime_nextpnr = median(d, "nextpnr", "runtime")

        if maxfreq_nextpnr is None:
            maxfreq_nextpnr = 0

        print("%17s | %10.2f     |   %4d:%02d      |" % (d,
              maxfreq_nextpnr,
              runtime_nextpnr // 60, runtime_nextpnr % 60))

    for err in errors:
        print(err)

#####################################################################

def plot_cmp_tools(d):
    plt.figure(figsize=(9, 2))

    for plot_idx, data_title, data_unit in [(0, "estmaxfreq", "MHz"), (1, "runtime", "min")]:
        plt.subplot(1, 2, plot_idx+1)

        for xoff, t, c in [(0, "nextpnr", "g")]:

            null_y = 0
            y = np.zeros(10)
            y2 = np.zeros(10)
            for i in range(10):
                v = data[d, t, i][data_title]
                if data_title == "runtime":
                    v = v / 60
                    null_y = max(null_y, v)
                else:
                    null_y = max(null_y, v/2)
                if data[d, t, i].estmaxfreq == 0:
                    y2[i] = 1.0
                else:
                    y[i] = v

            y3 = median(d, t, data_title)
            if y3 is not None:
                if data_title == "runtime":
                    y3 = y3 / 60
                plt.plot([xoff-2.7, xoff+12.7], [y3, y3], ":k")

            plt.bar(xoff+np.arange(10), y, 1, color=c)
            plt.bar(xoff+np.arange(10), y2 * null_y, 1, color='k')

        plt.ylabel("%s (%s)" % (data_title, data_unit))
        plt.xticks([5], ["nextpnr"])
        plt.xlim(-1, 11)
        # plt.grid(axis="y")

    plt.suptitle(d)
    plt.subplots_adjust(wspace=0.3, top=0.8)
    plt.show()


#####################################################################

def plot_place_route(d):
    plt.figure(figsize=(9, 2))

    for plot_idx, task in ((0, "place"), (1, "route")):
        plt.subplot(1, 2, plot_idx+1)
        plt.title(task)

        nextpnr_values = np.zeros(10)

        for i in range(10):
            if data[d, "nextpnr", i].estmaxfreq != 0:
                nextpnr_values[i] = data[d, "nextpnr", i]["runtime_" + task] / 60

        nextpnr_median = median(d, "nextpnr", "runtime_" + task)

        plt.bar(np.arange(10), nextpnr_values, 1, color='g')

        if nextpnr_median is not None:
            plt.plot([-2.7, 12.7], [nextpnr_median / 60, nextpnr_median / 60], ":k")

        plt.ylabel("runtime (min)")
        plt.xlim(-1, 11)
        plt.xticks([5], ["nextpnr"])

    plt.suptitle(d)
    plt.subplots_adjust(wspace=0.3, top=0.8)
    plt.show()
