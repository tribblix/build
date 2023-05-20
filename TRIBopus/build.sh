#!/bin/sh
#
${THOME}/build/dobuild -64 opus-1.4 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBopus opus-1.4
