#!/bin/sh
#
# internal scripts fail with our pos awk
#
env PATH=/usr/xpg4/bin:$PATH ${THOME}/build/dobuild dash-0.5.9.1
${THOME}/build/genpkg TRIBshell-dash dash-0.5.9.1
