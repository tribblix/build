#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Now a single tarball.
#
cd /tmp
wget https://hg.openjdk.org/jdk-updates/jdk10u/archive/jdk-10.0.2+13.tar.bz2

cd ~/ud
${THOME}/build/unpack jdk-10.0.2+13
cd jdk10u-jdk-10.0.2+13

#
# We need a copy of libsoftcrypto.h
# this was formerly shipped with the source, but got removed as the
# build host is supposed to provide it (either as part of the OS
# or via devkit)
#
# src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h
#
# removed in
# https://hg.openjdk.org/jdk9/jdk9/jdk/rev/9db62c197dcd
# so pull the version from the parent of that commit
#
# https://hg.openjdk.org/jdk9/jdk9/jdk/raw-file/48148c98c95a/src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h
#
# cp libsoftcrypto.h jdk/src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto
#
cp ${THOME}/build/patches/jdk-libsoftcrypto.h src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h

#
# jdk10 needs objcopy, which is in /usr/gnu/bin
# but the objcopy stuff doesn't actually work
#

#
# jdk10 wants Studio 5.13 == Studio 12.4
#

#
# I have no idea what the version string should look like
#

#
# Note for Solaris 10
# first error is that it wants gmake
# next it wants at least java 8 as the boot jdk
# wants solaris as, so need /usr/ccs/bin in the path
# wants objcopy, at least v21.1 (shipped 2.15 won't work)
# patch 149064-01 or your own copy needed
# needs cups, just copy /usr/include/cups from a system that has it
# gobjcopy stuff doesn't actually work anyway, so try with -k
# get a build error
# "/home/ptribble/ud/openjdk9/hotspot/src/os/solaris/vm/perfMemory_solaris.cpp", line 339: Error: d_fd is not a member of DIR.
# [that's just posix - needs __XOPEN_OR_POSIX defined, or use dd_fd]
#

#
# build on Tribblix m20.5, which has the libc compatibility fixes
#
# cd $HOME
# pbzcat /packages/localsrc/Studio/Studio12.4/SolarisStudio12.4-solaris-x86-bin.tar.bz2 | tar xf -
# mv SolarisStudio12.4-solaris-x86-bin/solarisstudio12.4 .
#
# iropt needs libmmheap.so.1
#
# OK, they're in the Studio12.4 download
# ~/SolarisStudio12.4-solaris-x86-bin/patches/system/120754-14
# SUNWlibmsr/reloc/lib/{,amd64/}libmmheap.so.1
#
# cp libmmheap.so.1 ~/solarisstudio12.4/lib/compilers/sys/
# cp amd64/libmmheap.so.1 ~/solarisstudio12.4/lib/compilers/sys/amd64/
#
# it wants objcopy, hence /usr/sfw/bin in the path
# fix the d_fd error -> dd_fd
#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#
env PATH=${HOME}/solarisstudio12.4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin bash ./configure --enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk9 --with-native-debug-symbols=none
env PATH=${HOME}/solarisstudio12.4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin gmake -k all

#
# there's also a hint about
# --disable-warnings-as-errors
#

#
# first testing looks like this:
#
# cd build/solaris-x86_64-normal-server-release/images/jdk
# ./bin/java -version
# openjdk version "10.0.2-internal" 2018-07-17
# OpenJDK Runtime Environment (build 10.0.2-internal+0-adhoc.ptribble.jdk10u-jdk-10.0.213)
# OpenJDK 64-Bit Server VM (build 10.0.2-internal+0-adhoc.ptribble.jdk10u-jdk-10.0.213, mixed mode)
#

#
# there's a new wrinkle in jdk10. If you put it in /usr/version it fails
#  java.lang.NullPointerException: native ops missing
#     at java.desktop/sun.java2d.xr.XRSurfaceData.freeXSDOPicture(Native Method)
#
# this appears to be an issue wherever it goes if it's that many levels
# deep in the hierarchy, so need to move it up or down a level
#
# until resolved, put it directly in /usr
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/openjdk10
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-normal-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk10 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../openjdk10 jdk10
cd /tmp/jdk/usr/jdk
ln -s ../openjdk10 .
#jdk10 is already EOF, this is just for build/test so it's never "latest"
#ln -s openjdk10 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
cd /tmp/jdk/usr/openjdk10
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# the jdk10 build appears to create a working one, so leave it be
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
#${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
#cp /tmp/cacerts /tmp/jdk/usr/openjdk10/lib/security

#
# edit .../conf/security/sunpkcs11-solaris.cfg and add the following to disabledMechanisms
#
# # the following mechanisms are disabled due to lack of digest cloning support
# # need to fix 6414899 first
#   CKM_MD5
#   CKM_SHA256
#   CKM_SHA384
#   CKM_SHA512
#

${THOME}/build/create_pkg TRIBopenjdk10 /tmp/jdk
