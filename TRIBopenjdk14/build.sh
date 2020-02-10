#!/bin/tcsh
#
# You first need to download the tarballs
#
# now a single tarball, 80M
#
# original release
#
cd ${THOME}/tarballs
wget http://hg.openjdk.java.net/jdk/jdk14/archive/jdk-14+36.tar.bz2

cd ~/ud
${THOME}/build/unpack jdk-14+36
cd jdk14-jdk-14+36

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
# http://hg.openjdk.java.net/jdk9/jdk9/jdk/rev/9db62c197dcd
# so pull the version from the parent of that commit
#
# http://hg.openjdk.java.net/jdk9/jdk9/jdk/raw-file/48148c98c95a/src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h
#
# cp libsoftcrypto.h jdk/src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto
#
cp ${THOME}/build/patches/jdk-libsoftcrypto.h src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h

#
# needs objcopy, which is in /usr/gnu/bin
# but the objcopy stuff doesn't actually work
#

#
# jdk14 needs autoconf installed
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
# need to #include <signal.h> explicitly, before devpoll.h
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
# this says 'studio 12.6 workaround'
# it may fix it for studio 12.6, but breaks everything else
# the symptom is SEGV if any -XX arguments are used, which they
# are in the image optimization part of the build
#
sed -i 's:BUILD_LIBJVM_arguments.cpp_OPTIMIZATION:#BUILD_LIBJVM_arguments.cpp_OPTIMIZATION:' make/hotspot/lib/JvmOverrideFiles.gmk

#
# shenandoah doesn't build on SPARC so disable it with
# --with-jvm-features=-shenandoahgc
# (Bellsoft fixed shenandoah for Solaris x86 in 12.0.2)
#
# the hotspot unit test don't build, hence --disable-hotspot-gtest
#
# we're recognized as solaris, JEP 362 deprecated the solaris and sparc
# ports, so we need to explicitly re-enable it
#
env PATH=${HOME}/solarisstudio12.4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin bash ./configure --enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk13 --with-native-debug-symbols=none --enable-dtrace=no --disable-hotspot-gtest --enable-deprecated-ports=yes

env PATH=${HOME}/solarisstudio12.4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin gmake -k all

#
# first testing looks like this:
#
# cd build/solaris-x86_64-server-release/images/jdk
# ./bin/java -version
# 
# openjdk version "14-internal" 2020-03-17
# OpenJDK Runtime Environment (build 14-internal+0-adhoc.ptribble.jdk14-jdk-1436)
# OpenJDK 64-Bit Server VM (build 14-internal+0-adhoc.ptribble.jdk14-jdk-1436, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk14
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk14 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk14 jdk14
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk14 .
#jdk14 isn't widely supported, so don't make it the default
#ln -s openjdk14 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm amd64
cd /tmp/jdk/usr/versions/openjdk14
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# the jdk14 build appears to create a working one, so leave it be
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
#${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
#cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk14/lib/security

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

${THOME}/build/create_pkg TRIBopenjdk14 /tmp/jdk
