#!/bin/tcsh
#
# You first need to download the tarballs
#
# now a single tarball - it's 85M or so, bzipped
#
# initial 11 release:
# wget http://hg.openjdk.java.net/jdk/jdk11/archive/jdk-11+28.tar.bz2
#
# 11.0.1 release
#wget http://hg.openjdk.java.net/jdk-updates/jdk11u/archive/jdk-11.0.1+13.tar.bz2
# 11.0.2 release
#wget http://hg.openjdk.java.net/jdk-updates/jdk11u/archive/jdk-11.0.2+9.tar.bz2
#
# 11.0.3 release
#wget http://hg.openjdk.java.net/jdk-updates/jdk11u/archive/jdk-11.0.3+7.tar.bz2
#
# 11.0.4 release
# wget http://hg.openjdk.java.net/jdk-updates/jdk11u/archive/jdk-11.0.4+11.tar.bz2
#
# 11.0.5 release
# wget http://hg.openjdk.java.net/jdk-updates/jdk11u/archive/jdk-11.0.5+10.tar.bz2
#
# 11.0.6 release
# wget http://hg.openjdk.java.net/jdk-updates/jdk11u/archive/jdk-11.0.6+10.tar.bz2
#
# to get the build number, go to the jdk11u repo
# http://hg.openjdk.java.net/jdk-updates/jdk11u/
# there should be a -ga tag for each release
# and there should be a build-numbered tag with the same commit
# and it's that build tag you want to download
#
cd ${THOME}/tarballs
wget http://hg.openjdk.java.net/jdk-updates/jdk11u/archive/jdk-11.0.7+10.tar.bz2
#
# fix the tarball name to match the directory it unpacks into
# this needed to get the patches to apply correctly
#
ln jdk-11.0.7+10.tar.bz2 jdk11u-jdk-11.0.7+10.tar.bz2

cd ~/ud
${THOME}/build/unpack jdk11u-jdk-11.0.7+10
cd jdk11u-jdk-11.0.7+10

#
# as of 11.0.7, switch to a gcc build to replace Stuido
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
# src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h
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
# jdk11 needs autoconf installed
#
zap install autoconf

#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
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
# cd build/solaris-x86_64-normal-server-release/images/jdk
# ./bin/java -version
#openjdk version "11.0.7-internal" 2020-04-14
#OpenJDK Runtime Environment (build 11.0.7-internal+0-adhoc.ptribble.jdk11u-jdk-11.0.710)
#OpenJDK 64-Bit Server VM (build 11.0.7-internal+0-adhoc.ptribble.jdk11u-jdk-11.0.710, mixed mode)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk11
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-normal-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk11 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk11 jdk11
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk11 .
#jdk11 isn't widely supported, so don't make it the default
#ln -s openjdk11 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
cd /tmp/jdk/usr/versions/openjdk11
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# the jdk11 build appears to create a working one, but it uses
# a horribly outdated set of certificates, so replace it
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk11/lib/security

${THOME}/build/create_pkg TRIBopenjdk11 /tmp/jdk
