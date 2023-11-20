#!/bin/sh
#
# webp pixbuf loader
#
${THOME}/build/mesonbuild -64 webp-pixbuf-loader-0.2.4
${THOME}/build/genpkg TRIBwebp-pixbuf webp-pixbuf-loader-0.2.4
