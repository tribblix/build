#!/bin/sh
#
${THOME}/build/dobuild libfastjson-0.99.2 -C CFLAGS=-std=gnu99
${THOME}/build/genpkg TRIBlibfastjson libfastjson-0.99.2
