#!/bin/sh
#
${THOME}/build/dobuild -gnu -64 libsoup-2.50.0 -C "--without-gnome --disable-more-warnings --disable-introspection"
${THOME}/build/genpkg TRIBlibsoup libsoup-2.50.0
