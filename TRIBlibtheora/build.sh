#!/bin/sh
#
# needs ogg
#
${THOME}/build/dobuild -64 libtheora-1.1.1 -C --disable-examples
${THOME}/build/genpkg TRIBlibtheora libtheora-1.1.1
