#!/bin/sh
#
# our own tigervnc
#
# 64-bit build fails with a runtime error in libfltk_images
#
${THOME}/build/unpack tigervnc-1.10.1
cd tigervnc-1.10.1
mkdir build
cd build
env PATH=/usr/gnu/bin:$PATH cmake -DCMAKE_INSTALL_PREFIX=/usr -G "Unix Makefiles" ..
gmake -j
${THOME}/build/genpkg TRIBremote-desktop-tigervnc
