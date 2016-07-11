#!/bin/sh
#
# needs SDL2 OpenAL vorbis modplug PhysFS
${THOME}/build/unpack solarus-1.4.5
cd solarus-1.4.5
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_RPATH_USE_LINK_PATH=NO -DCMAKE_INSTALL_RPATH=/usr/versions/solarus/lib -DSOLARUS_USE_LUAJIT=OFF -DCMAKE_INSTALL_PREFIX=/usr/versions/solarus
gmake -j 8
${THOME}/build/genpkg TRIBsolarus
# [doesn't actually work. Errors if you move the mouse, and speed is very slow.]
