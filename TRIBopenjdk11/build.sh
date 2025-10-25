#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# just pull from the releases page on the jdk11u github repo
# https://github.com/openjdk/jdk11u/tags
#

cd ~/ud
${THOME}/build/unpack jdk11u-jdk-11.0.29-ga
cd jdk11u-jdk-11.0.29-ga

#
# as of 11.0.7, switch to a gcc build to replace Studio
#

#
# jdk11 needs autoconf installed
#
zap install autoconf

#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#
# you may wish to use --with-jobs to push down the parallelism, which
# will reduce memory pressure
#
# use an existing jdk11 as the boot jdk to avoid depending on the
# non-LTS jdk10
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk11 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-hotspot-gtest --disable-dtrace \
--disable-warnings-as-errors \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all

#
# first testing looks like this:
#
# cd build/solaris-x86_64-normal-server-release/images/jdk
# ./bin/java -version
#
# openjdk version "11.0.29-internal" 2025-10-21
# OpenJDK Runtime Environment (build 11.0.29-internal+0-adhoc.ptribble.jdk11u-jdk-11.0.29-ga)
# OpenJDK 64-Bit Server VM (build 11.0.29-internal+0-adhoc.ptribble.jdk11u-jdk-11.0.29-ga, mixed mode)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk11
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-normal-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk11 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk11 jdk11
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk11 .
# no longer default
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

#
# edit conf/security/sunpkcs11-solaris.cfg and add the following to disabledMechanisms
#
# I thought this was fixed, but the Haplo test suite proves it isn't,
# at least for this update version
#
# # the following mechanisms are disabled due to lack of digest cloning support
# # need to fix 6414899 first
#   CKM_MD5
#   CKM_SHA256
#   CKM_SHA384
#   CKM_SHA512
#
(cd /tmp/jdk/usr/versions/openjdk11/conf/security/ ; gpatch -p1 < ${THOME}/build/patches/sunpkcs11-solaris.cfg.patch)

${THOME}/build/create_pkg TRIBopenjdk11 /tmp/jdk

cd
rm -fr /tmp/jdk
