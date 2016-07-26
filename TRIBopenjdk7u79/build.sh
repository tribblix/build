#!/bin/tcsh
#
# We need java and ant to bootstrap. And it seems to have studio
# hardcoded, So I've unpacked my copy of studio 12.1.
# 
# zap install ant
# cd
# gzcat /packages/localsrc/Studio/Studio12u1/sunstudio12u1-patched-ii-2010Feb-sol-x86.tar.gz | tar xf -
# mkdir jj
# cd jj
# gzcat /packages/localsrc/java/jdk-7u10-solaris-i586.tar.gz | tar xf -
# gzcat /packages/localsrc/java/jdk-7u10-solaris-x64.tar.gz | tar xf -
# cd
#
# Wants audio headers TRIBsys-header-audio else build fails.
# Needs TRIBfont-ttype-dejavu else java apps barf.
#

#
# need to get the source from mercurial
#
cd jdk
hg clone -r jdk7u79-b15 http://hg.openjdk.java.net/jdk7u/jdk7u openjdk7
cd openjdk7
gsed -i -e 's/hg clone/hg clone -r jdk7u79-b15/g' make/scripts/hgforest.sh
bash ./make/scripts/hgforest.sh clone
cd ..
mv openjdk7 openjdk7u79
tar cf ${THOME}/tarballs/openjdk7u79.tar openjdk7u79
gzip ${THOME}/tarballs/openjdk7u79.tar

cd ~/ud
${THOME}/build/unpack openjdk7u79
cd openjdk7u79

# I've got the build command:

env \
PATH=/home/ptribble/sunstudio12.1/bin:$PATH \
ALT_BOOTDIR=/home/ptribble/jj/jdk1.7.0_10 \
ALT_COMPILER_PATH=/home/ptribble/sunstudio12.1/bin \
ALT_CUPS_HEADERS_PATH=/usr/include FULL_DEBUG_SYMBOLS=0 \
ALT_PARALLEL_COMPILE_JOBS=4 BUILD_NUMBER=b15 MILESTONE=79 \
ARCH_DATA_MODEL=32 gmake sanity

env \
PATH=/home/ptribble/sunstudio12.1/bin:$PATH \
ALT_BOOTDIR=/home/ptribble/jj/jdk1.7.0_10 \
ALT_COMPILER_PATH=/home/ptribble/sunstudio12.1/bin \
ALT_CUPS_HEADERS_PATH=/usr/include FULL_DEBUG_SYMBOLS=0 \
ALT_PARALLEL_COMPILE_JOBS=4 BUILD_NUMBER=b15 MILESTONE=79 \
ARCH_DATA_MODEL=32 gmake

# And it (roll of thunder) ... just works ...
# 
# ./build/solaris-i586/bin/java -version
# openjdk version "1.7.0-79"
# OpenJDK Runtime Environment (build 1.7.0-79-b15)
# OpenJDK Server VM (build 24.79-b02, mixed mode)
# 
# ./build/solaris-sparc/bin/java -version
# openjdk version "1.7.0-79"
# OpenJDK Runtime Environment (build 1.7.0-79-b15)
# OpenJDK Server VM (build 24.79-b02, mixed mode)
# 
# 
# Add 64-bit

mv build/solaris-i586/j2sdk-image .

# or
# 
# mv build/solaris-sparc/j2sdk-image .

env \
PATH=/home/ptribble/sunstudio12.1/bin:$PATH \
ALT_BOOTDIR=/home/ptribble/jj/jdk1.7.0_10 \
ALT_COMPILER_PATH=/home/ptribble/sunstudio12.1/bin \
ALT_CUPS_HEADERS_PATH=/usr/include FULL_DEBUG_SYMBOLS=0 \
ALT_PARALLEL_COMPILE_JOBS=4 BUILD_NUMBER=b15 MILESTONE=79 \
ARCH_DATA_MODEL=32 gmake clean

env \
PATH=/home/ptribble/sunstudio12.1/bin:$PATH \
ALT_BOOTDIR=/home/ptribble/jj/jdk1.7.0_10 \
ALT_COMPILER_PATH=/home/ptribble/sunstudio12.1/bin \
ALT_CUPS_HEADERS_PATH=/usr/include FULL_DEBUG_SYMBOLS=0 \
ALT_PARALLEL_COMPILE_JOBS=4 BUILD_NUMBER=b15 MILESTONE=79 \
ARCH_DATA_MODEL=64 gmake sanity

env \
PATH=/home/ptribble/sunstudio12.1/bin:$PATH \
ALT_BOOTDIR=/home/ptribble/jj/jdk1.7.0_10 \
ALT_COMPILER_PATH=/home/ptribble/sunstudio12.1/bin \
ALT_CUPS_HEADERS_PATH=/usr/include FULL_DEBUG_SYMBOLS=0 \
ALT_PARALLEL_COMPILE_JOBS=4 BUILD_NUMBER=b15 MILESTONE=79 \
ARCH_DATA_MODEL=64 gmake

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk1.7.0_79
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-amd64/j2sdk-image ; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk1.7.0_79 ; tar xf -)
(cd j2sdk-image ; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk1.7.0_79 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk1.7.0_79 jdk1.7.0
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk1.7.0_79 .
ln -s openjdk1.7.0_79 latest
mkdir -p /tmp/jdk/usr/bin
cd /tmp/jdk/usr/bin
ln -s ../jdk/latest/bin/* .
rm amd64

# or sparc:
# rm -fr /tmp/jdk
# mkdir -p /tmp/jdk/usr/versions/openjdk1.7.0_79
# mkdir -p /tmp/jdk/usr/jdk/instances
# (cd build/solaris-sparcv9/j2sdk-image ; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk1.7.0_79 ; tar xf -)
# (cd j2sdk-image ; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk1.7.0_79 ; tar xf -)
# cd /tmp/jdk/usr/jdk/instances
# ln -s ../../versions/openjdk1.7.0_79 jdk1.7.0
# cd /tmp/jdk/usr/jdk
# ln -s ../versions/openjdk1.7.0_79 .
# ln -s openjdk1.7.0_79 latest
# mkdir -p /tmp/jdk/usr/bin
# cd /tmp/jdk/usr/bin
# ln -s ../jdk/latest/bin/* .
# rm sparcv9

${THOME}/build/create_pkg TRIBopenjdk7u79 /tmp/jdk
