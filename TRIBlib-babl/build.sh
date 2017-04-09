#!/bin/sh
#
# the build barfs on awk's crappiness, hence the AWK
#
env AWK=nawk ${THOME}/build/dobuild -64 babl-0.1.24 -C "--disable-mmx --disable-sse"
${THOME}/build/genpkg TRIBlib-babl babl-0.1.24
