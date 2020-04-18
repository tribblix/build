#!/bin/sh
#
# bundle mate-common and libmatemixer in with this rather than creating a
# separate package
#
${THOME}/build/dobuild -gnu libmatemixer-1.22.0
${THOME}/build/dobuild mate-common-1.22.2
${THOME}/build/dobuild -gnu mate-desktop-1.22.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-desktop mate-common-1.22.2 mate-desktop-1.22.2 libmatemixer-1.22.0
