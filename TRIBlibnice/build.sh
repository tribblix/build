#!/bin/sh
#
# libnice has both old and new gstreamer plugins
#
${THOME}/build/dobuild libnice-0.1.10 -C "--disable-static CFLAGS=-std=gnu99"
${THOME}/build/genpkg TRIBlibnice libnice-0.1.10
