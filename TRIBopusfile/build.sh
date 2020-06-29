#!/bin/sh
#
${THOME}/build/dobuild -64 opusfile-0.12 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBopusfile opusfile-0.12
