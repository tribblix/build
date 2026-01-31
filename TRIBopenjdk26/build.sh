#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# jdk has been migrated to git
# go to https://github.com/openjdk/jdk/tags
#

${THOME}/build/unpack jdk-jdk-26-33
cd jdk-jdk-26-33

#
# jdk26 needs autoconf installed
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
# use jdk25 as the boot jdk
#
# Custom branding means we need to use --with-version-pre to include
# the build tag in the version string.
# When we get to a ga release reset that to
# --with-version-pre=ga
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk25 \
--with-native-debug-symbols=none \
--with-toolchain-type=gcc \
--disable-dtrace \
--disable-warnings-as-errors \
--with-source-date=current \
--with-vendor-name=Tribblix \
--with-vendor-url=http://tribblix.org/ \
--with-vendor-bug-url=http://www.tribblix.org/feedback.html \
--with-vendor-vm-bug-url=http://www.tribblix.org/feedback.html \
--with-version-opt=Tribblix \
--with-jobs=4 \
--with-version-pre=33 \
DATE=/usr/gnu/bin/date \
LOCALE=/bin/true \
STRIP=/usr/gnu/bin/strip

env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin gmake product-images

#
# first testing looks like this:
#
# ./build/solaris-x86_64-server-release/images/jdk/bin/java -version
#
# openjdk version "26-33" 2026-03-17
# OpenJDK Runtime Environment (build 26-33-Tribblix)
# OpenJDK 64-Bit Server VM (build 26-33-Tribblix, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk26
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk26 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk26 jdk26
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk26 .

#
# need to create a certificate bundle
#
# the jdk26 build appears to create a working one, but it uses
# a horribly outdated set of certificates, so replace it
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk26/lib/security

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

(cd /tmp/jdk/usr/versions/openjdk26/conf/security/ ; gpatch -p1 < ${THOME}/build/patches/sunpkcs11-solaris.cfg.patch)

${THOME}/build/create_pkg TRIBopenjdk26 /tmp/jdk

cd
rm -fr /tmp/jdk
