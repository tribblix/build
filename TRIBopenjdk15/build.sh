#!/bin/tcsh
#
# You first need to download the tarballs
#
# now a single tarball, 80M
#
# prerelease versions from jdk master
#
cd ${THOME}/tarballs
wget http://hg.openjdk.java.net/jdk/jdk/archive/jdk-15+24.tar.bz2
ln jdk-15+24.tar.bz2 jdk-jdk-15+24.tar.bz2

cd ~/ud
${THOME}/build/unpack jdk-jdk-15+24
cd jdk-jdk-15+24

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
# shenandoah doesn't build on SPARC so disable it with
# --with-jvm-features=-shenandoahgc
# (Bellsoft fixed shenandoah for Solaris x86 in 12.0.2)
#
# the hotspot unit test don't build, hence --disable-hotspot-gtest
#
# we're recognized as solaris, JEP 362 deprecated the solaris and sparc
# ports, so we need to explicitly re-enable it
#
env PATH=/usr/bin:/usr/sbin:/usr/sfw/bin:/usr/gnu/bin bash ./configure \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk14 \
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
# openjdk version "15-internal" 2020-09-15
# OpenJDK Runtime Environment (build 15-internal+0-adhoc.ptribble.jdk-jdk-1524)
# OpenJDK 64-Bit Server VM (build 15-internal+0-adhoc.ptribble.jdk-jdk-1524, mixed mode, sharing)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk15
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk15 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk15 jdk15
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk15 .
#jdk15 isn't widely supported, so don't make it the default
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
# again, doesn't seem to be necessary
#
# # the following mechanisms are disabled due to lack of digest cloning support
# # need to fix 6414899 first
#   CKM_MD5
#   CKM_SHA256
#   CKM_SHA384
#   CKM_SHA512
#

${THOME}/build/create_pkg TRIBopenjdk15 /tmp/jdk
