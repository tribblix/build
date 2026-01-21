#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# jdk has been migrated to git
# go to https://github.com/openjdk/jdk17u/tags
#

#
# just pull the ga tag
#
cd ~/ud
${THOME}/build/unpack jdk17u-jdk-17.0.18-ga
cd jdk17u-jdk-17.0.18-ga

#
# jdk17 needs autoconf installed
#
zap install autoconf

#
# looks like dtrace is busted, illumos and Solaris have diverged
# enough to trip it up, so --enable-dtrace=no
#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#
# we're recognized as solaris, JEP 362 deprecated the solaris and sparc
# ports, so we need to explicitly re-enable it
#
# use a previous jdk17 as the boot jdk, it's LTS so we don't depend on the
# unsupported jdk16
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk17 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--enable-deprecated-ports=yes \
--with-vendor-name=Tribblix \
--with-vendor-url=http://tribblix.org/ \
--with-vendor-bug-url=http://www.tribblix.org/feedback.html \
--with-vendor-vm-bug-url=http://www.tribblix.org/feedback.html \
--with-version-pre=ga \
--with-version-opt=Tribblix \
--with-jobs=3

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake all

#
# first testing looks like this:
#
# ./build/solaris-x86_64-server-release/images/jdk/bin/java -version
#
# openjdk version "17.0.18-ga" 2026-01-20
# OpenJDK Runtime Environment (build 17.0.18-ga+0-Tribblix)
# OpenJDK 64-Bit Server VM (build 17.0.18-ga+0-Tribblix, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk17
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk17 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk17 jdk17
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk17 .
# no longer default on x86
#ln -s openjdk17 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9

#
# need to create a certificate bundle
#
# the jdk17 build appears to create a working one, but it uses
# a horribly outdated set of certificates, so replace it
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk17/lib/security

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

(cd /tmp/jdk/usr/versions/openjdk17/conf/security/ ; gpatch -p1 < ${THOME}/build/patches/sunpkcs11-solaris.cfg.patch)

${THOME}/build/create_pkg TRIBopenjdk17 /tmp/jdk

cd
rm -fr /tmp/jdk
