#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild vtwm-5.5.0
${THOME}/build/genpkg TRIBvtwm vtwm-5.5.0
