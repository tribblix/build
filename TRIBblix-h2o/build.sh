#!/bin/sh
#
${THOME}/build/unpack h2o-2.0.4
cd h2o-2.0.4
cmake -DCMAKE_INSTALL_PREFIX=/opt/tribblix/h2o -DWITH_MRUBY=off
gmake -j 4
${THOME}/build/genpkg TRIBblix-h2o
