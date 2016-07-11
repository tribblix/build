#!/bin/sh
#
# build both the regular and QT packages together
#
git clone git://git.code.sf.net/p/zint/code zint-code
cd zint-code/
mkdir build
cd build/
env PATH=/usr/versions/Qt-4.8/bin:$PATH cmake .. -DCMAKE_INSTALL_PREFIX=/usr
gmake
${THOME}/build/genpkg TRIBzint
${THOME}/build/genpkg TRIBzint-qt
