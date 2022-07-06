#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -64 -gnu mate-media-1.24.1 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBmate-media mate-media-1.24.1
