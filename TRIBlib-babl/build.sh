#!/bin/sh
#
# new meson build
#
$THOME/build/mesonbuild -64 babl-0.1.98 -C "-Denable-gir=false -Denable-mmx=false -Denable-sse=false --buildtype=release"
${THOME}/build/genpkg TRIBlib-babl babl-0.1.98
