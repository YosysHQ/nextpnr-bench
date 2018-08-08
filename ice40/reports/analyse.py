#!/usr/bin/env python3

import re
import sys
import datetime
import time
import numpy as np
import matplotlib.pyplot as plt

datafiles = """
20180801-ice40-f041f01
20180803-ice40-f9a9da6
20180804-ice40-528eddc
""".split()

# data[design][datafile][tool][datatype] = median_value
data = dict()

datafile2time = dict()

for df in datafiles:
    with open(df + ".dat", "r") as f:
        dt = datetime.datetime(int(df[0:4]), int(df[4:6]), int(df[6:8]))
        datafile2time[df] = (time.mktime(dt.timetuple()), "%s-%s-%s" % (df[0:4], df[4:6], df[6:8]))
        for line in f:
            line = line.split()
            if line[0] == "DATA":
                d, t, i = line[1], line[2], int(line[3])

                if float(line[4]) == 0:
                    continue

                if d not in data:
                    data[d] = dict()

                if df not in data[d]:
                    data[d][df] = dict()

                if t not in data[d][df]:
                    entry = dict()
                    entry["maxfreq"] = list()
                    entry["estmaxfreq"] = list()
                    entry["runtime"] = list()
                    entry["runtime_place"] = list()
                    entry["runtime_route"] = list()
                    data[d][df][t] = entry

                entry["maxfreq"].append(float(line[4]))
                entry["estmaxfreq"].append(float(line[5]))
                entry["runtime"].append(int(line[6]))
                entry["runtime_place"].append(int(line[7]))
                entry["runtime_route"].append(int(line[8]))

def median(vals):
    vals = sorted(vals)
    if len(vals) == 0:
        return None
    if len(vals) % 2 == 0:
        return (vals[len(vals) // 2 - 1] + vals[len(vals) // 2]) / 2
    else:
        return vals[len(vals) // 2]

for t in data.keys():
    for d in data[t].keys():
        for df in data[t][d].keys():
            for field in data[t][d][df].keys():
                data[t][d][df][field] = median(data[t][d][df][field])

#####################################################################

def plot_runtime(field):
    plt.figure(figsize=(9, 3))
    plt.title(field)

    xticks = dict()
    for d in sorted(data.keys()):
        X, Y = list(), list()
        for df in datafiles:
            if "arachne" not in data[d][df]:
                continue
            if "nextpnr" not in data[d][df]:
                continue
            X.append(datafile2time[df][0])
            Y.append(data[d][df]["nextpnr"][field] / data[d][df]["arachne"][field])
            xticks[datafile2time[df][0]] = datafile2time[df][1]
        plt.plot(X, Y, label=d)

    plt.legend(loc='lower left', prop={'size': 6})
    plt.ylabel("nextpnr / arachne (runtime)")
    plt.xticks(list(xticks.keys()), list(xticks.values()))
    plt.grid()
    plt.show()

#####################################################################

def plot_maxfreq(field):
    plt.figure(figsize=(9, 3))
    plt.title(field)

    xticks = dict()
    for d in sorted(data.keys()):
        X, Y = list(), list()
        for df in datafiles:
            if "arachne" not in data[d][df]:
                continue
            if "nextpnr" not in data[d][df]:
                continue
            X.append(datafile2time[df][0])
            Y.append(data[d][df]["nextpnr"][field] - data[d][df]["arachne"][field])
            xticks[datafile2time[df][0]] = datafile2time[df][1]
        plt.plot(X, Y, label=d)

    plt.legend(loc='lower left', prop={'size': 6})
    plt.ylabel("nextpnr - arachne (MHz)")
    plt.xticks(list(xticks.keys()), list(xticks.values()))
    plt.grid()
    plt.show()
