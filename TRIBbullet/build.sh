#!/bin/sh
#
${THOME}/build/unpack bullet-2.82-r2704
cd bullet-2.82-r2704
cmake -D BUILD_DEMOS=OFF -D BUILD_EXTRAS=OFF -D BUILD_SHARED_LIBS=ON -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr .
gmake -j 4
cd ..
${THOME}/build/genpkg TRIBbullet bullet-2.82-r2704
