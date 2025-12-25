#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# jdk mainline has been migrated to git
# go to https://github.com/openjdk/jdk16/tags
#
# now split out to the jdk16u project
# https://github.com/openjdk/jdk16u/releases
#

#
# the tag is 16+xx, the filename is 16-xx
# 16.0.1 GA is build 9 = jdk-16.0.1-9
# 16.0.2 GA is build 7 = jdk-16.0.2-7
#

cd ~/ud
${THOME}/build/unpack jdk16u-jdk-16.0.2-7
cd jdk16u-jdk-16.0.2-7

#
# looks like dtrace is busted, illumos and Solaris have diverged
# enough to trip it up, so --enable-dtrace=no
#

#
# jdk16 needs autoconf installed
#
zap install autoconf

#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#

#
# we're recognized as solaris, JEP 362 deprecated the solaris and sparc
# ports, so we need to explicitly re-enable it
#
# you may wish to use --with-jobs to push down the parallelism, which
# will reduce memory pressure
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk15 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all

#
# first testing looks like this:
#
# cd build/solaris-x86_64-server-release/images/jdk
# ./bin/java -version
#
# openjdk version "16.0.2-internal" 2021-07-20
# OpenJDK Runtime Environment (build 16.0.2-internal+0-adhoc.ptribble.jdk16u-jdk-16.0.2-7)
# OpenJDK 64-Bit Server VM (build 16.0.2-internal+0-adhoc.ptribble.jdk16u-jdk-16.0.2-7, mixed mode, sharing)
#


rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk16
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk16 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk16 jdk16
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk16 .
#jdk16 isn't widely supported, so don't make it the default
#ln -s openjdk16 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
cd /tmp/jdk/usr/versions/openjdk16
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# the jdk16 build appears to create a working one, but it uses
# a horribly outdated set of certificates, so replace it
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk16/lib/security

#
# edit conf/security/sunpkcs11-solaris.cfg and add the following to disabledMechanisms
#
# # the following mechanisms are disabled due to lack of digest cloning support
# # need to fix 6414899 first
#   CKM_MD5
#   CKM_SHA256
#   CKM_SHA384
#   CKM_SHA512
#

(cd /tmp/jdk/usr/versions/openjdk16/conf/security/ ; gpatch -p1 < ${THOME}/build/patches/sunpkcs11-solaris.cfg.patch)

${THOME}/build/create_pkg TRIBopenjdk16 /tmp/jdk
