#!/bin/sh
#
# make -k because pt.mo fails
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu mate-control-center-1.22.2
${THOME}/build/genpkg TRIBmate-control-center mate-control-center-1.22.2
