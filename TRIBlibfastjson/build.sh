#!/bin/sh
#
# need libtool installed for autogen.sh
#
${THOME}/build/dobuild -64 libfastjson-0.99.4
${THOME}/build/genpkg TRIBlibfastjson libfastjson-0.99.4
