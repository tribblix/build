#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# jdk has been migrated to git
# go to https://github.com/openjdk/jdk24u/tags
#

cd ~/ud
${THOME}/build/unpack jdk24u-jdk-24.0.2-ga
cd jdk24u-jdk-24.0.2-ga

#
# jdk24 needs autoconf installed
#
zap install autoconf

#
# looks like dtrace is busted, illumos and Solaris have diverged
# enough to trip it up, so --enable-dtrace=no
#
# LOCALE so locale detection fails and we correctly fall back to
# the C locale, so that sort doesn't fail
#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#
# we're recognized as solaris, JEP 362 deprecated the solaris and sparc
# ports, so we need to explicitly re-enable it
#
# use jdk23 as the boot jdk
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk23 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--with-source-date=current \
--with-jobs=4 \
DATE=/usr/gnu/bin/date \
LOCALE=/bin/true \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake product-images

#
# first testing looks like this:
#
# cd build/solaris-x86_64-server-release/images/jdk
# ./bin/java -version
#
# openjdk version "24.0.2-internal" 2025-07-15
# OpenJDK Runtime Environment (build 24.0.2-internal-adhoc.ptribble.jdk24u-jdk-24.0.2-ga)
# OpenJDK 64-Bit Server VM (build 24.0.2-internal-adhoc.ptribble.jdk24u-jdk-24.0.2-ga, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk24
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk24 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk24 jdk24
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk24 .
#jdk24 isn't LTS, don't make it the default

#
# need to create a certificate bundle
#
# the jdk24 build appears to create a working one, but it uses
# a horribly outdated set of certificates, so replace it
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk24/lib/security

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

(cd /tmp/jdk/usr/versions/openjdk24/conf/security/ ; gpatch -p1 < ${THOME}/build/patches/sunpkcs11-solaris.cfg.patch)

${THOME}/build/create_pkg TRIBopenjdk24 /tmp/jdk

cd
rm -fr /tmp/jdk
