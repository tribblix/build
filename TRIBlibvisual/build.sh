#!/bin/sh
#
# the github tarballs are a bit odd in that they're a combined tarball
# with the two components in subdirectories
#
${THOME}/build/dobuild -64 -S libvisual libvisual-libvisual-0.4.0
#
# this is a 2-stage build, you need to package the above and install it, then
# build the plugins against it to make the full package
#
env CONFIG_SHELL=/bin/bash ${THOME}/build/dobuild -64 -S libvisual-plugins libvisual-libvisual-plugins-0.4.0 -C "--disable-gstreamer-plugin --disable-gdkpixbuf-plugin --disable-corona --disable-gforce"

${THOME}/build/genpkg TRIBlibvisual libvisual-libvisual-0.4.0 libvisual-plugins libvisual-libvisual-plugins-0.4.0
