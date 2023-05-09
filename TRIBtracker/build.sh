#!/bin/sh
#
# must build without gtk3
#
env LIBS=-luuid ${THOME}/build/dobuild -gnu -64 tracker-1.13.0 -C "--disable-introspection --disable-hal"
${THOME}/build/genpkg TRIBtracker tracker-1.13.0
