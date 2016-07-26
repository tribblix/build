#!/bin/sh
#
#
# LLVM/clang
#
# Currently experimental - that's why it's parked out is /usr/versions, it
# ought to move into /usr when it looks good
#

#
# http://www.linuxfromscratch.org/blfs/view/svn/general/llvm.html
#
# unpack cfe-* in tools and call it clang
# unpack compiler-rt-* in projects and call it compiler-rt
#
# and add
#
# --enable-shared
# --disable-assertions
#
${THOME}/build/unpack llvm-3.6.1.src
cd llvm-3.6.1.src
cd tools
${THOME}/build/unpack cfe-3.6.1.src
mv cfe-3.6.1.src clang
cd ..
cd projects
${THOME}/build/unpack compiler-rt-3.6.1.src
mv compiler-rt-3.6.1.src compiler-rt
cd ..
./configure --prefix=/usr/versions/llvm-3.6.1 --enable-optimized --enable-shared --disable-assertions
gmake -j 12
zap install groff
env PATH=/usr/perl5/5.10.0/bin/:$PATH gmake -k install DESTDIR=/tmp/ll
# [fails on pod2html/pod2man]
${THOME}/build/create_pkg TRIBllvm /tmp/ll


# Update: needed to patch tools/clang/lib/Driver/Tools.cpp to tell it where
# gcc lives, as it hardcodes somewhere totally wrong. That will need to be
# updated if a newer gcc is shipped.
