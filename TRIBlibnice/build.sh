#!/bin/sh
#
# libnice now has only new gstreamer plugins
#
env TRIBBLIX_CFLAGS=-std=gnu99 ${THOME}/build/dobuild -64 libnice-0.1.17 -C "--disable-static --disable-introspection --disable-dependency-tracking"
${THOME}/build/genpkg TRIBlibnice libnice-0.1.17
