#!/bin/sh
#
# bundle mate-common and libmatemixer in with this rather than creating a
# separate package
#
${THOME}/build/dobuild -64only -gnu libmatemixer-1.26.1 -C --enable-oss
${THOME}/build/dobuild mate-common-1.26.0
${THOME}/build/dobuild -64only -gnu mate-desktop-1.26.2 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-desktop mate-common-1.26.0 mate-desktop-1.26.2 libmatemixer-1.26.1
