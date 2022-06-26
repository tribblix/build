#!/bin/sh
#
# bundle mate-common and libmatemixer in with this rather than creating a
# separate package
#
${THOME}/build/dobuild -64 -gnu libmatemixer-1.24.1
${THOME}/build/dobuild mate-common-1.24.2
${THOME}/build/dobuild -64 -gnu mate-desktop-1.24.1 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-desktop mate-common-1.24.2 mate-desktop-1.24.1 libmatemixer-1.24.1
