#!/bin/sh
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild -gnu -64only dconf-0.40.0 -C -Dbash_completion=false
${THOME}/build/genpkg TRIBdconf dconf-0.40.0
