#!/bin/sh
#
env CC=gcc ${THOME}/build/dobuild ftjam-2.5.2
${THOME}/build/genpkg TRIBftjam ftjam-2.5.2
