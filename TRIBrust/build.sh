#!/bin/sh
#
# this build requires a bootstrap, which we pull from Joyent
# https://us-east.manta.joyent.com/pkgsrc/public/pkg-bootstraps/rust-1.28.0-x86_64-sun-solaris.tar.gz
#
${THOME}/build/unpack rustc-1.29.1-src
${THOME}/build/unpack rust-1.28.0-x86_64-sun-solaris
cd rustc-1.29.1-src
env CC=gcc CXX=g++ AR=/usr/gnu/bin/ar \
    RUSTC=`pwd`/../rust-1.28.0-x86_64-sun-solaris/bin/rustc \
    RUSTFLAGS="-C linker=gcc" \
./configure --prefix=/usr/versions/rust \
	    --enable-extended \
	    --local-rust-root=`pwd`/../rust-1.28.0-x86_64-sun-solaris \
	    --default-linker=gcc \
	    --set rust.default-linker=gcc \
	    --set target.x86_64-sun-solaris.cc=gcc \
	    --set target.x86_64-sun-solaris.cxx=g++ \
	    --set target.x86_64-sun-solaris.ar=/usr/gnu/bin/ar \
	    --set target.x86_64-sun-solaris.linker=gcc \
	    --enable-rpath --disable-codegen-tests --disable-dist-src \
	    --disable-llvm-static-stdcpp --disable-ninja --enable-vendor \
	    --disable-docs --disable-jemalloc --release-channel=stable

env CC=gcc CXX=g++ AR=/usr/gnu/bin/ar \
    RUSTC=`pwd`/../rust-1.28.0-x86_64-sun-solaris/bin/rustc \
    RUSTFLAGS="-C linker=gcc" \
python /export/home/ptribble/ud/rustc-1.29.1-src/x.py --help

env CC=gcc CXX=g++ AR=/usr/gnu/bin/ar \
    RUSTC=`pwd`/../rust-1.28.0-x86_64-sun-solaris/bin/rustc \
    RUSTFLAGS="-C linker=gcc" \
python /export/home/ptribble/ud/rustc-1.29.1-src/x.py build

#
# it still thinks the linker is "cc"
#
# create ~/.cargo/config containing
#
# [target.x86_64-sun-solaris]
# linker = "gcc"
#
# and it works, only to need ssp
# zap install TRIBv-gcc-483-ssp
#
# appears as if it would work, but fails with a gcc ENOSPC error
# is this because the parent rustc is ~4G and the fork/exec fails?
# yes, it is. Shut *everything* down.
#
# we need the OI patches. otherwise the llvm build fails
#

#
# you *must* ensure that /usr/versions/rust exists, otherwise install fails
#

#
# the install script carefully puts bash in the shebang, then undoes
# all the good work by calling it explicitly via sh
#
mkdir -p /tmp/ri/bin
ln -s /usr/bin/bash /tmp/ri/bin/sh

#
env PATH=/tmp/ri/bin:$PATH CC=gcc CXX=g++ AR=/usr/gnu/bin/ar \
    RUSTC=`pwd`/../rust-1.28.0-x86_64-sun-solaris/bin/rustc \
    RUSTFLAGS="-C linker=gcc" \
${THOME}/build/genpkg TRIBrust
cd ..

#
# clean up
#
rm -fr /tmp/ri
