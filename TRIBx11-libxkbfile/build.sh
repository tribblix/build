#!/bin/sh
#
# we patch the SONAME, and do so for both autotools and meson
#
${THOME}/build/mesonbuild -64 libxkbfile-1.1.3
${THOME}/build/genpkg TRIBx11-libxkbfile libxkbfile-1.1.3
