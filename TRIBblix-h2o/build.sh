#!/bin/sh
#
${THOME}/build/unpack h2o-2.2.5
cd h2o-2.2.5
cmake -DCMAKE_INSTALL_PREFIX=/opt/tribblix/h2o -DWITH_MRUBY=off -DCMAKE_C_FLAGS=-std=gnu99
gmake -j 4
${THOME}/build/genpkg TRIBblix-h2o
cd ..
