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
#
# now do the same again in 64-bits
#
gmake clean
case `uname -p` in
sparc)
    ARCH64="sparcv9"
    ;;
i386)
    ARCH64="amd64"
    ;;
esac
env PKG_CONFIG_PATH=/usr/lib/${ARCH64}/pkgconfig PATH=/usr/bin/${ARCH64}:$PATH LDFLAGS="-m64" CFLAGS="-O -m64" CXXFLAGS="-O -m64" ./configure --prefix=/usr --bindir=/usr/${IPREFIX}/bin/${ARCH64} --libdir=/usr/lib/${ARCH64}
# edit the Makefile so that CCASFLAGS = -m64
# (configure lies to you)
gmake -j 4
gmake install DESTDIR=/tmp/c1

${THOME}/build/create_pkg TRIBsmpeg /tmp/c1
rm -fr /tmp/c1
