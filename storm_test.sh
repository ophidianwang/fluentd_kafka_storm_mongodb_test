#!/bin/bash
source ~/petrel_env/bin/activate
cd $(dirname $0)
python storm_test.py
