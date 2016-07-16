#!/bin/sh
#
${THOME}/build/unpack coolreader3-3.0.40
cd coolreader3-3.0.40
mkdir qtbuild
cd qtbuild
env PATH=/usr/versions/Qt-4.8/bin:$PATH cmake -D GUI=QT -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr ..
env LD_RUN_PATH=/usr/versions/Qt-4.8/lib PATH=/usr/versions/Qt-4.8/bin:$PATH gmake
rm -fr /tmp/fred
gmake install DESTDIR=/tmp/fred
cp cr3qt/cr3 /tmp/fred/usr/bin
${THOME}/build/create_pkg TRIBcoolreader3 /tmp/fred
