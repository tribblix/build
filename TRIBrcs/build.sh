#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild rcs-5.9.4
${THOME}/build/genpkg TRIBrcs rcs-5.9.4
