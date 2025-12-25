#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# current releases are tagged on github
#
cd ~/ud
${THOME}/build/unpack jdk13u-jdk-13.0.14-ga
cd jdk13u-jdk-13.0.14-ga

#
# as of 13.0.3, switch to a gcc build to replace Studio
#

#
# looks like dtrace is busted, I suspect illumos and Solaris have diverged
# enough to trip it up, so --enable-dtrace=no
#

#
# jdk13 needs autoconf installed
#
zap install autoconf

#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#
# the hotspot unit test don't build, hence --disable-hotspot-gtest
#
# 13.0.3 seemed to be happy with an older boot jdk, 13.0.4 requires
# 12 or 13
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk13 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-hotspot-gtest --disable-dtrace \
--disable-warnings-as-errors \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all

#
# first testing looks like this:
#
# cd build/solaris-x86_64-server-release/images/jdk
# ./bin/java -version
# openjdk version "13.0.14-internal" 2023-01-17
# OpenJDK Runtime Environment (build 13.0.14-internal+0-adhoc.ptribble.jdk13u-jdk-13.0.14-ga)
# OpenJDK 64-Bit Server VM (build 13.0.14-internal+0-adhoc.ptribble.jdk13u-jdk-13.0.14-ga, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk13
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk13 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk13 jdk13
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk13 .
#jdk13 isn't an LTS release, so don't make it the default
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

(cd /tmp/jdk/usr/versions/openjdk13/conf/security/ ; gpatch -p1 < ${THOME}/build/patches/sunpkcs11-solaris.cfg.patch)

${THOME}/build/create_pkg TRIBopenjdk13 /tmp/jdk
