# -*- coding: utf-8 -*-

import os
import re

topology_path = os.path.dirname(os.path.abspath(__file__)) + "/../petrel_exp2/"
create_py_path = topology_path + "create.py"

with open(create_py_path, "r") as create_py_file:
    for i, line in enumerate(create_py_file):
        if line.find("exp_spout.ExpSpout") != -1:
            print("ExpSpout setting @ line #{0}".format(i))
            print(line)
            number = re.search(r", ([0-9]+)\)", line).group(1)
            print(number)
        elif line.find("split_bolt.SplitBolt") != -1:
            print("SplitBolt setting @ line #{0}".format(i))
            print(line)
            number = re.search(r", ([0-9]+)\)", line).group(1)
            print(number)
        elif line.find("group_bolt.GroupBolt") != -1:
            print("GroupBolt setting @ line #{0}".format(i))
            print(line)
            number = re.search(r", ([0-9]+)\)", line).group(1)
            print(number)
        elif line.find("output_bolt.OutputBolt") != -1:
            print("OutputBolt setting @ line #{0}".format(i))
            print(line)
            number = re.search(r", ([0-9]+)\)", line).group(1)
            print(number)


