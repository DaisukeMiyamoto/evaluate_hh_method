#!/bin/bash -x

for METHOD in euler runge cnexp impl; \
do \
    for i in {1..100}; \
    do \
    DT=$(printf "%d" $(expr $i \* 10)); \
    python single_hh.py $DT $METHOD; \
    done; \
done;

