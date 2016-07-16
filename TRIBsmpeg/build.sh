#!/bin/sh
#
# so the current version wants SDL2 (see TRIBsmpeg2),
# force something older for this package whic is built
# against SDL1
#
svn co svn://svn.icculus.org/smpeg/trunk -r 399 smpeg
cd smpeg
sh autogen.sh
env LIBS="-lsocket -lnsl" ./configure --prefix=/usr
gmake -j 4
chmod a+x install-sh
rm -fr /tmp/c1
gmake install DESTDIR=/tmp/c1
${THOME}/build/create_pkg TRIBsmpeg /tmp/c1
rm -fr /tmp/c1
