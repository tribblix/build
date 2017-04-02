#!/bin/sh
#
# c-icap
#
# see also TRIBblix-cicapmod
#
${THOME}/build/dobuild c_icap-0.5.2 -P /opt/tribblix/c-icap
${THOME}/build/genpkg TRIBblix-cicap c_icap-0.5.2
