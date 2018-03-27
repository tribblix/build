#!/bin/sh
#
case `uname -p` in
sparc)
    ARCH64="sparcv9"
    ;;
i386)
    ARCH64="amd64"
    ;;
esac

${THOME}/build/unpack -64 openjpeg-2.3.0
cd openjpeg-2.3.0
cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr -DCMAKE_C_FLAGS="-std=gnu99 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64"
gmake -j 4
cd ..
cd openjpeg-2.3.0-64bit
# specifying architecture directories for lib and bin doesn't work
# so they're corrected by the fixinstall.64 script
env PKG_CONFIG_PATH=/usr/lib/${ARCH64}/pkgconfig LDFLAGS="-m64" CFLAGS="-m64 -std=gnu99" CXXFLAGS="-m64" cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr
gmake -j 4
cd ..
${THOME}/build/genpkg TRIBlib-openjpeg openjpeg-2.3.0
