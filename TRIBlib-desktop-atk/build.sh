#!/bin/sh
#
${THOME}/build/dobuild -64 atk-2.20.0 -C --disable-introspection
${THOME}/build/genpkg TRIBlib-desktop-atk atk-2.20.0
