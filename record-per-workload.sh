#!/bin/bash
PERF=/shome/tools/perf/perf
sudo $PERF record -e intel_pt// -S0x2000 -vv ./user_loop 0
sudo $PERF script --itrace=i0nsxe -F time,dso,ip,sym,asm,flags --ns > perf-script-workload.txt
