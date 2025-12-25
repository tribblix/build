#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need libtool installed for autogen.sh
#
${THOME}/build/dobuild -64only libfastjson-0.99.9.1 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBlibfastjson libfastjson-0.99.9.1
