#!/bin/tcsh
#
# jdk mainline has been migrated to git
# go to https://github.com/openjdk/jdk17u/tags
#

#
# the tag is 17.0.1+xx, the filename is 17-xx
# for 17.0.1, ga is +12
# for 17.0.2, ga is +8
#
cd ~/ud
${THOME}/build/unpack jdk17u-jdk-17.0.2-ga
cd jdk17u-jdk-17.0.2-ga

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
# use jdk17 as the boot jdk, it's LTS so we don't depend on the
# unsupported jdk16
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk17 \
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
# openjdk version "17.0.2-internal" 2022-01-18
# OpenJDK Runtime Environment (build 17.0.2-internal+0-adhoc.ptribble.jdk17u-jdk-17.0.2-ga)
# OpenJDK 64-Bit Server VM (build 17.0.2-internal+0-adhoc.ptribble.jdk17u-jdk-17.0.2-ga, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk17
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk17 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk17 jdk17
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk17 .
#don't make it the default (yet)
#ln -s openjdk17 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
cd /tmp/jdk/usr/versions/openjdk17
rm `find . -name '*.diz'`

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
