#!/bin/sh
#
# libnice has both old and new gstreamer plugins
#
env TRIBBLIX_CFLAGS=-std=gnu99 ${THOME}/build/dobuild -64 libnice-0.1.14 -C "--disable-static --disable-introspection"
${THOME}/build/genpkg TRIBlibnice libnice-0.1.14
