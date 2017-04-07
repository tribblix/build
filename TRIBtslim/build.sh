#!/bin/sh
#
git clone https://github.com/ptribble/tslim.git
cd tslim
mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
gmake -j 8
/packages/localsrc/Tribblix/build/genpkg TRIBtslim tslim
cd ../..
