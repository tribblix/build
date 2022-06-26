#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu libmatekbd-1.24.1 -C --disable-introspection
${THOME}/build/genpkg TRIBlibmatekbd libmatekbd-1.24.1
