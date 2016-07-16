#!/bin/sh
#
# babl-pallette.c needs to #include <limits.h> to get INT_MAX
# the build barfs on awk's crappiness, hence the AWK
#
env AWK=nawk ${THOME}/build/dobuild babl-0.1.10
${THOME}/build/genpkg TRIBlib-babl babl-0.1.10
