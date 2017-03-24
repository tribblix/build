#!/bin/sh
#
env PATH=/opt/tribblix/postgres96/bin:$PATH ${THOME}/build/dobuild pgpool-II-3.6.2
${THOME}/build/genpkg TRIBpgpool pgpool-II-3.6.2
