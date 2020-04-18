#!/bin/sh
#
${THOME}/build/dobuild -gnu libmatekbd-1.22.0 -C --disable-introspection
${THOME}/build/genpkg TRIBlibmatekbd libmatekbd-1.22.0
