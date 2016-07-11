#!/bin/sh
#
${THOME}/build/unpack glm-0.9.7.2
cd glm
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
${THOME}/build/genpkg TRIBglm
