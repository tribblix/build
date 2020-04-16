#!/bin/tcsh
#
# You first need to download the tarballs
#
# now a single tarball, 80M
#
# original release
# wget http://hg.openjdk.java.net/jdk/jdk13/archive/jdk-13+33.tar.bz2
#
# 13.0.2 update
# wget http://hg.openjdk.java.net/jdk-updates/jdk13u/archive/jdk-13.0.2+8.tar.bz2
#
cd ${THOME}/tarballs
wget http://hg.openjdk.java.net/jdk-updates/jdk13u/archive/jdk-13.0.3+3.tar.bz2
#
# fix the tarball name to match the directory it unpacks into
# this needed to get the patches to apply correctly
#
ln jdk-13.0.3+3.tar.bz2 jdk13u-jdk-13.0.3+3.tar.bz2

cd ~/ud
${THOME}/build/unpack jdk13u-jdk-13.0.3+3
cd jdk13u-jdk-13.0.3+3

#
# as of 13.0.3, switch to a gcc build to replace Stuido
#

#
# looks like dtrace is busted, I suspect illumos and Solaris have diverged
# enough to trip it up, so --enable-dtrace=no
#

#
# Not for gcc builds, and ignoring for now as j2ucrypto is deprecated
# in more recent versions
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
#cp ${THOME}/build/patches/jdk-libsoftcrypto.h src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h

#
# jdk13 needs autoconf installed
#
zap install autoconf

#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#
# shenandoah doesn't build on SPARC so disable it with
# --with-jvm-features=-shenandoahgc
# (Bellsoft fixed shenandoah for Solaris x86 in 12.0.2)
#
# the hotspot unit test don't build, hence --disable-hotspot-gtest
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk10 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-hotspot-gtest --disable-dtrace \
--disable-warnings-as-errors

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all

#
# first testing looks like this:
#
# cd build/solaris-x86_64-server-release/images/jdk
# ./bin/java -version
# openjdk version "13.0.3-internal" 2020-04-14
# OpenJDK Runtime Environment (build 13.0.3-internal+0-adhoc.ptribble.jdk13u-jdk-13.0.33)
# OpenJDK 64-Bit Server VM (build 13.0.3-internal+0-adhoc.ptribble.jdk13u-jdk-13.0.33, mixed mode, sharing)
# 

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk13
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk13 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk13 jdk13
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk13 .
#jdk13 isn't widely supported, so don't make it the default
#ln -s openjdk13 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
cd /tmp/jdk/usr/versions/openjdk13
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# the jdk13 build appears to create a working one, but it uses
# a horribly outdated set of certificates, so replace it
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk13/lib/security

${THOME}/build/create_pkg TRIBopenjdk13 /tmp/jdk
