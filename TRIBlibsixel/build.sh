#!/bin/sh
#
# the tarball would unpack into sixel-1.8.6
#
env TRIBBLIX_CFLAGS=-D__EXTENSIONS__ $THOME/build/dobuild -64only -n sixel-1.8.6 libsixel-1.8.6
${THOME}/build/genpkg TRIBlibsixel libsixel-1.8.6
