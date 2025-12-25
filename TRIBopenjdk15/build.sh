#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# You first need to download the tarballs
#
# now a single tarball, 74M
#
# as of 15+27, split into jdk15 repo
#
# as of 15+25, solaris support removed from mainline
#
# original release
#wget https://hg.openjdk.org/jdk/jdk15/archive/jdk-15+36.tar.bz2
#ln jdk-15+36.tar.bz2 jdk15-jdk-15+36.tar.bz2
#
# 15.0.1
# wget https://hg.openjdk.org/jdk-updates/jdk15u/archive/jdk-15.0.1+9.tar.bz2
#
# for 15.0.2 the ga tag doesn't match any other tag (latest is +7)
# wget https://hg.openjdk.org/jdk-updates/jdk15u/archive/jdk-15.0.2-ga.tar.bz2
# ln jdk-15.0.2-ga.tar.bz2 jdk15u-jdk-15.0.2-ga.tar.bz2
#
#cd ${THOME}/tarballs
#wget https://hg.openjdk.org/jdk-updates/jdk15u/archive/jdk-15.0.3+3.tar.bz2
#ln jdk-15.0.3+3.tar.bz2 jdk15u-jdk-15.0.3+3.tar.bz2

#
# now on github; use the ga tag
#
cd ~/ud
${THOME}/build/unpack jdk15u-jdk-15.0.10-ga
cd jdk15u-jdk-15.0.10-ga

#
# looks like dtrace is busted, illumos and Solaris have diverged
# enough to trip it up, so --enable-dtrace=no
#

#
# jdk15 needs autoconf installed
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
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk14 \
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
# openjdk version "15.0.10-internal" 2023-01-17
# OpenJDK Runtime Environment (build 15.0.10-internal+0-adhoc.ptribble.jdk15u-jdk-15.0.10-ga)
# OpenJDK 64-Bit Server VM (build 15.0.10-internal+0-adhoc.ptribble.jdk15u-jdk-15.0.10-ga, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk15
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk15 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk15 jdk15
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk15 .
#jdk15 isn't an LTS release, so don't make it the default
#ln -s openjdk15 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
cd /tmp/jdk/usr/versions/openjdk15
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# the jdk15 build appears to create a working one, but it uses
# a horribly outdated set of certificates, so replace it
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl
#
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk15/lib/security

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

(cd /tmp/jdk/usr/versions/openjdk15/conf/security/ ; gpatch -p1 < ${THOME}/build/patches/sunpkcs11-solaris.cfg.patch)

${THOME}/build/create_pkg TRIBopenjdk15 /tmp/jdk
