#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the python modules fail to configure
# disable ruby as its install doesn't honor DESTDIR
#
${THOME}/build/dobuild -64only rrdtool-1.8.0 -C "--disable-lua --disable-tcl --disable-python --disable-ruby"
${THOME}/build/genpkg TRIBrrdtool rrdtool-1.8.0
