#!/bin/sh
#
${THOME}/build/dobuild -64only -gnu libmatekbd-1.26.1 -C --disable-introspection
${THOME}/build/genpkg TRIBlibmatekbd libmatekbd-1.26.1
