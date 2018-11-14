#!/usr/bin/env python3

import re
import sys

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
                            if t == "arachne":
                                if "After placement:" in line:
                                    runtime_place = runtime
                                if "error:" in line:
                                    print("ERROR %s %s %d %s" % (d, t, i, line))
                                    error = True
                            if t == "nextpnr":
                                if ("starting routing procedure" in line) or line.endswith("Info: Routing.."):
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
    sys.exit(0)

#####################################################################

import numpy as np
import matplotlib.pyplot as plt

class DataEntry:
    __slots__ = ["maxfreq", "estmaxfreq", "runtime", "runtime_place", "runtime_route", "errors"]

    def __init__(self, maxfreq=0.0, estmaxfreq=0.0, runtime=0, runtime_place=0, runtime_route=0, errors=None):
        self.maxfreq = maxfreq
        self.estmaxfreq = estmaxfreq
        self.runtime = runtime
        self.runtime_place = runtime_place
        self.runtime_route = runtime_route
        self.errors = errors

    def add_data(self, maxfreq, estmaxfreq, runtime, runtime_place, runtime_route):
        self.maxfreq = float(maxfreq)
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
        if self.maxfreq != 0.0:
            args.append("maxfreq=%.2f" % self.maxfreq)
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
    print("                  |      Max Freq (MHz)            |      Runtime (M:SS)            |")
    print("           design |    arachne    nextpnr   change |    arachne    nextpnr   change |")
    print("  ----------------+--------------------------------+--------------------------------+")

    maxfreq_factor = np.zeros(len(designs))
    runtime_factor = np.zeros(len(designs))

    for idx, d in enumerate(designs):
        maxfreq_arachne = median(d, "arachne", "maxfreq")
        maxfreq_nextpnr = median(d, "nextpnr", "maxfreq")

        runtime_arachne = median(d, "arachne", "runtime")
        runtime_nextpnr = median(d, "nextpnr", "runtime")

        if maxfreq_arachne is not None and maxfreq_nextpnr is not None:
            maxfreq_factor[idx] = maxfreq_nextpnr / maxfreq_arachne

        runtime_factor[idx] = runtime_nextpnr / runtime_arachne

        if maxfreq_arachne is None:
            maxfreq_arachne = 0

        if maxfreq_nextpnr is None:
            maxfreq_nextpnr = 0

        print("%17s | %10.2f %10.2f %7.2fx | %7d:%02d %7d:%02d %7.2fx |" % (d,
              maxfreq_arachne, maxfreq_nextpnr,
              maxfreq_nextpnr / maxfreq_arachne,
              runtime_arachne // 60, runtime_arachne % 60,
              runtime_nextpnr // 60, runtime_nextpnr % 60,
              runtime_nextpnr / runtime_arachne))

    plt.figure(figsize=(9, 2))

    plt.subplot(1, 2, 1)
    plt.plot([-0.5, 1.5*len(designs)], [0, 0], 'k')
    plt.bar(1.5*np.arange(len(designs)), maxfreq_factor, 1, color='m')
    plt.ylabel("MHz / MHz")
    plt.xlabel("(nextpnr maxfreq) / (arachne maxfreq)")
    plt.xlim(-0.5, 1.5*len(designs))
    plt.xticks([], [])

    plt.subplot(1, 2, 2)
    plt.bar(1.5*np.arange(len(designs)), runtime_factor, 1, color='c')
    plt.ylabel("min / min")
    plt.xlabel("(nextpnr runtime) / (arachne runtime)")
    plt.xlim(-0.5, 1.5*len(designs))
    plt.xticks([], [])

    plt.subplots_adjust(wspace=0.3, top=0.8)
    plt.show()

    for err in errors:
        print(err)

#####################################################################

def plot_cmp_tools(d):
    plt.figure(figsize=(9, 2))

    for plot_idx, data_title, data_unit in [(0, "maxfreq", "MHz"), (1, "runtime", "min")]:
        plt.subplot(1, 2, plot_idx+1)

        for xoff, t, c in [(0, "arachne", "r"), (15, "nextpnr", "g")]:

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
                if data[d, t, i].maxfreq == 0:
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
        plt.xticks([5, 20], ["arachne", "nextpnr"])
        plt.xlim(-1, 26)
        # plt.grid(axis="y")

    plt.suptitle(d)
    plt.subplots_adjust(wspace=0.3, top=0.8)
    plt.show()

#####################################################################

def plot_est_maxfreq(d):
    t = "nextpnr"
    maxf_values = np.zeros(10)
    estmaxf_values = np.zeros(10)
    for i in range(10):
        maxf = data[d, t, i].maxfreq
        estmaxf = data[d, t, i].estmaxfreq
        if (maxf != 0) and (estmaxf != 0):
            maxf_values[i] = maxf
            estmaxf_values[i] = estmaxf

    plt.figure(figsize=(9, 2))
    plt.subplot(1, 2, 1)

    plt.bar(np.arange(10)*1.5, maxf_values, 0.5, color='r', label="actual Fmax")
    plt.bar(np.arange(10)*1.5+0.5, estmaxf_values, 0.5, color='g', label="estimated Fmax")

    plt.ylabel("MHz")
    plt.xlabel("Absolute actual and estimated Fmax")
    plt.xlim(-0.5, 15)
    plt.legend(loc='lower left', prop={'size': 6})
    plt.xticks([], [])

    plt.subplot(1, 2, 2)

    plt.plot([-0.5, 15], [0, 0], 'k')
    plt.bar(np.arange(10)*1.5, maxf_values - estmaxf_values, 1.0, color='m')

    plt.ylabel("MHz")
    plt.xlabel("(actual Fmax) - (estimated Fmax)")
    plt.xlim(-0.5, 15)
    plt.xticks([], [])

    plt.suptitle(d)
    plt.subplots_adjust(wspace=0.3, top=0.8)
    plt.show()

#####################################################################

def plot_place_route(d):
    plt.figure(figsize=(9, 2))

    for plot_idx, task in ((0, "place"), (1, "route")):
        plt.subplot(1, 2, plot_idx+1)
        plt.title(task)

        arachne_values = np.zeros(10)
        nextpnr_values = np.zeros(10)

        for i in range(10):
            if data[d, "arachne", i].maxfreq != 0:
                arachne_values[i] = data[d, "arachne", i]["runtime_" + task] / 60
            if data[d, "nextpnr", i].maxfreq != 0:
                nextpnr_values[i] = data[d, "nextpnr", i]["runtime_" + task] / 60

        arachne_median = median(d, "arachne", "runtime_" + task)
        nextpnr_median = median(d, "nextpnr", "runtime_" + task)

        plt.bar(np.arange(10), arachne_values, 1, color='r')
        plt.bar(np.arange(10)+15, nextpnr_values, 1, color='g')

        if arachne_median is not None:
            plt.plot([-2.7, +12.7], [arachne_median / 60, arachne_median / 60], ":k")

        if nextpnr_median is not None:
            plt.plot([15-2.7, 15+12.7], [nextpnr_median / 60, nextpnr_median / 60], ":k")

        plt.ylabel("runtime (min)")
        plt.xlim(-1, 26)
        plt.xticks([5, 20], ["arachne", "nextpnr"])

    plt.suptitle(d)
    plt.subplots_adjust(wspace=0.3, top=0.8)
    plt.show()
