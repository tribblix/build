#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu libmatekbd-1.26.0 -C --disable-introspection
${THOME}/build/genpkg TRIBlibmatekbd libmatekbd-1.26.0
