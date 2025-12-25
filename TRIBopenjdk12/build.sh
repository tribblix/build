#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Note: to build this on current systems requires a couple of changes
# so you can either go downrev, or apply fixes/workarounds
# 1. It isn't compatible with gmake 4.3, using 4.2.1 is fine if you can
# or look at the bug https://bugs.openjdk.org/browse/JDK-8237879 and apply
# https://hg.openjdk.org/jdk/jdk/rev/0743e1d49930. This is now fixed with
# jdk12-make.patch
# 2. It isn't compatible by default with gcc10, gcc7 is fine but with gcc10
# you'll need to add -fcommon (the problem is that -fno-common is the default)
#
# You first need to download the tarballs
#
# now a single tarball, 80M
#
# initial 12 release:
# wget https://hg.openjdk.org/jdk/jdk12/archive/jdk-12+33.tar.bz2
#
# first update
# wget https://hg.openjdk.org/jdk-updates/jdk12u/archive/jdk-12.0.1+12.tar.bz2
#
cd ${THOME}/tarballs
wget https://hg.openjdk.org/jdk-updates/jdk12u/archive/jdk-12.0.2+10.tar.bz2

cd ~/ud
${THOME}/build/unpack jdk-12.0.2+10
cd jdk12u-jdk-12.0.2+10

#
# looks like dtrace is busted, I suspect illumos and Solaris have diverged
# enough to trip it up, so --enable-dtrace=no
#

#
# We need a copy of libsoftcrypto.h
# this was formerly shipped with the source, but got removed as the
# build host is supposed to provide it (either as part of the OS
# or via devkit)
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
# needs objcopy, which is in /usr/gnu/bin
# but the objcopy stuff doesn't actually work
#

#
# jdk12 needs autoconf installed
#
zap install autoconf

#
# jdk10-12 wants Studio 5.13 == Studio 12.4
# there are creeping dependencies on Studio 12.6
#

#
# I have no idea what the version string should look like
#

#
# Note for Solaris 10
# src/java.desktop/share/native/libfontmanager/harfbuzz/hb-blob.cc
# the POSIX+C_SOURCE thing is broken - set it to 199506L
#

#
# build on Tribblix m20.5 or later, which has the libc compatibility fixes
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
#

#
# !!!!!!!!!!!!!! YOU MUST FIX THE FOLLOWING !!!!!!!!!!!!!!
#
# src/hotspot/os/solaris/perfMemory_solaris.cpp
# fix the d_fd error -> dd_fd
#
# src/java.base/solaris/native/libnio/ch/DevPollArrayWrapper.c
# need to #include <signal.h> explicitly
#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#
# there are two problems with harfbuzz:
#
# first, remove refmemnoconstr_aggr from DISABLED_WARNINGS_CXX_solstudio
# in the file make/lib/Awt2dLibraries.gmk
#
# second, patch the source to stop it emitting the warning that would have
# been gagged by the above flag if Studio12.4 had it
#
gpatch -p1 < ${THOME}/build/patches/jdk12-studio124.patch
#
# shenandoah doesn't build on SPARC so disable it with
# --with-jvm-features=-shenandoahgc
# (Bellsoft fixed shenandoah for Solaris x86 in 12.0.2)
#
env PATH=${HOME}/solarisstudio12.4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin bash ./configure --enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk11 --with-native-debug-symbols=none --enable-dtrace=no
env PATH=${HOME}/solarisstudio12.4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin gmake -k all

#
# first testing looks like this:
#
# cd build/solaris-x86_64-server-release/images/jdk
# ./bin/java -version
# openjdk version "12.0.2-internal" 2019-04-16
# OpenJDK Runtime Environment (build 12.0.2-internal+0-adhoc.ptribble.jdk12u-jdk-12.0.210)
# OpenJDK 64-Bit Server VM (build 12.0.2-internal+0-adhoc.ptribble.jdk12u-jdk-12.0.210, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk12
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk12 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk12 jdk12
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk12 .
#jdk12 isn't widely supported, so don't make it the default
#ln -s openjdk12 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
cd /tmp/jdk/usr/versions/openjdk12
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# the jdk12 build appears to create a working one, so leave it be
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
#${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
#cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk12/lib/security

#
# edit conf/security/sunpkcs11-solaris.cfg and add the following to disabledMechanisms
#
# again, doesn't seem to be necessary
#
# # the following mechanisms are disabled due to lack of digest cloning support
# # need to fix 6414899 first
#   CKM_MD5
#   CKM_SHA256
#   CKM_SHA384
#   CKM_SHA512
#

${THOME}/build/create_pkg TRIBopenjdk12 /tmp/jdk
