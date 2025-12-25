#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# You first need to download the tarballs
#
# now a single tarball, 80M
#
# original release
# wget https://hg.openjdk.org/jdk/jdk14/archive/jdk-14+36.tar.bz2
#
# 1st update
# wget https://hg.openjdk.org/jdk-updates/jdk14u/archive/jdk-14.0.1+7.tar.bz2
#
cd ${THOME}/tarballs
wget https://hg.openjdk.org/jdk-updates/jdk14u/archive/jdk-14.0.2+12.tar.bz2
#
# fix the tarball name to match the directory it unpacks into
# this needed to get the patches to apply correctly
#
ln jdk-14.0.2+12.tar.bz2 jdk14u-jdk-14.0.2+12.tar.bz2

cd ~/ud
${THOME}/build/unpack jdk14u-jdk-14.0.2+12
cd jdk14u-jdk-14.0.2+12

#
# looks like dtrace is busted, I suspect illumos and Solaris have diverged
# enough to trip it up, so --enable-dtrace=no
#

#
# jdk14 needs autoconf installed
#
zap install autoconf

#
# the hotspot unit test don't build, hence --disable-hotspot-gtest
#
# we're recognized as solaris, JEP 362 deprecated the solaris and sparc
# ports, so we need to explicitly re-enable it
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk13 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-hotspot-gtest --disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all

#
# first testing looks like this:
#
# cd build/solaris-x86_64-server-release/images/jdk
# ./bin/java -version
#
# openjdk version "14.0.2-internal" 2020-07-14
# OpenJDK Runtime Environment (build 14.0.2-internal+0-adhoc.ptribble.jdk14u-jdk-14.0.212)
# OpenJDK 64-Bit Server VM (build 14.0.2-internal+0-adhoc.ptribble.jdk14u-jdk-14.0.212, mixed mode, sharing)
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
#rm -f amd64 sparcv9
cd /tmp/jdk/usr/versions/openjdk14
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# the jdk14 build appears to create a working one, but it uses
# a horribly outdated set of certificates, so replace it
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk14/lib/security

${THOME}/build/create_pkg TRIBopenjdk14 /tmp/jdk
