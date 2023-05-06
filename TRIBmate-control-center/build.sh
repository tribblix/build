#!/bin/sh
#
# needs a patch mate-control-center-bookmark.patch because we don't
# have GLib 2.66 yet
#
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/dobuild -gnu -64 mate-control-center-1.26.0
${THOME}/build/genpkg TRIBmate-control-center mate-control-center-1.26.0
