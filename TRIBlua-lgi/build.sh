#!/bin/sh
#
env CC=gcc ${THOME}/build/dobuild lgi-0.9.2
${THOME}/build/genpkg TRIBlua-lgi lgi-0.9.2
