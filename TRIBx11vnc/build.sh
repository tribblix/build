#!/bin/sh
#
# x11vnc - needs libtool installed to build
#
${THOME}/build/dobuild x11vnc-0.9.14
${THOME}/build/genpkg TRIBx11vnc x11vnc-0.9.14
