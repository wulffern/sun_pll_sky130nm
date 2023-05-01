#!/usr/bin/env python3

import pandas as pd
import cicsim as cs
import numpy as np
import yaml
import matplotlib.pyplot as plt

def main(name):

    dfs = cs.toDataFrames(cs.ngRawRead(name + "_spec.raw"))
    df = dfs[0]

    spec = 20*np.log10(np.abs(df["v(ck)"]))
    freq = df["frequency"]
    fxmax = spec.argmax()
    fymax = float(np.abs(freq[fxmax]))


    yamlfile = name + ".yaml"
    with open(yamlfile) as fi:
        obj = yaml.safe_load(fi)

    # Do something to parameters
    obj["freq"] = fymax

    # Save new yaml file
    with open(yamlfile,"w") as fo:
        yaml.dump(obj,fo)


if __name__ == '__main__':
    main("output_tran/tran_LayGtKttTtVt")
