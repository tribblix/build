#!/bin/sh
#
${THOME}/build/mesonbuild -64 -gnu atk-2.38.0 -C "--buildtype=release -Dintrospection=false"
${THOME}/build/genpkg TRIBlib-desktop-atk atk-2.38.0
