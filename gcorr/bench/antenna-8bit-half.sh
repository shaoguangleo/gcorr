#!/bin/bash

NLOOP=100

nant=(4 6 8 10 12 16)

for a in ${nant[@]}; do
    echo -n "NANT= $a  "
    ../src/testgpukernel_half -n $NLOOP test${a}-8.conf | grep Gbps
done
