#!/bin/sh
#
# need libtool installed for autogen.sh
#
${THOME}/build/dobuild -64only libfastjson-0.99.9.1 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBlibfastjson libfastjson-0.99.9.1
