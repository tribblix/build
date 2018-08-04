#!/bin/sh
#
#
# LLVM/clang
#
# Currently experimental - that's why it's parked out is /usr/versions, it
# ought to move into /usr when it looks good
#

#
# there's a patch similar to the OI patch, modified for the Tribblix
# locations of gcc
#

#
# http://www.linuxfromscratch.org/blfs/view/svn/general/llvm.html
#
# unpack cfe-* in tools and call it clang
#
${THOME}/build/unpack llvm-4.0.1.src
cd llvm-4.0.1.src
cd tools
${THOME}/build/unpack cfe-4.0.1.src
mv cfe-4.0.1.src clang
cd ..


mkdir build
cd build
cmake -G 'Unix Makefiles' -DCMAKE_INSTALL_PREFIX=/usr/versions/llvm-4.0.1 -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_ASSERTIONS=OFF ..
gmake -j 6

zap install groff
env PATH=/usr/perl5/5.10.0/bin/:$PATH gmake -k install DESTDIR=/tmp/ll
# [fails on pod2html/pod2man]
${THOME}/build/create_pkg TRIBllvm /tmp/ll
