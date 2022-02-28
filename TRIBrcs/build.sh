#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64only rcs-5.10.1
${THOME}/build/genpkg TRIBrcs rcs-5.10.1
