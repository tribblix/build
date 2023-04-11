#!/bin/sh
#
# webp
#
# we build and ship the old version for compatibility with applications
# built against it; once they have all been rebuild it can be removed
#
${THOME}/build/dobuild -64 libwebp-0.5.1
${THOME}/build/dobuild -64 libwebp-1.3.0 -C "--disable-gl"
${THOME}/build/genpkg TRIBlibwebp libwebp-0.5.1 libwebp-1.3.0
