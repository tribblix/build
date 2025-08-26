#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# You first need to download the tarballs
# this method from BLFS
#
cd /tmp
wget https://hg.openjdk.org/jdk9/jdk9/archive/jdk-9+181.tar.bz2
for file in corba hotspot jaxp jaxws langtools jdk nashorn
do
  wget https://hg.openjdk.org/jdk9/jdk9/${file}/archive/jdk-9+181.tar.bz2 -O ${file}-jdk-9+181.tar.bz2
done
pbzcat jdk-9+181.tar.bz2 | tar xf -
mv jdk9-jdk-9+181 openjdk9
for file in corba hotspot jaxp jaxws langtools jdk nashorn
  pbzcat ${file}-jdk-9+181.tar.bz2 | tar xf -
  mv ${file}-jdk-9+181 openjdk9/$file
done
tar cf ${THOME}/tarballs/openjdk9.tar openjdk9
gzip ${THOME}/tarballs/openjdk9.tar

cd ~/ud
${THOME}/build/unpack openjdk9
cd openjdk9

#
# We need a copy of libsoftcrypto.h
# this was formerly shipped with the source, but got removed as the
# build host is supposed to provide it (either as part of the OS
# or via devkit)
#
# src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h
#
# removed in
# https://hg.openjdk.org/jdk9/jdk9/jdk/rev/9db62c197dcd
# so pull the version from the parent of that commit
#
# https://hg.openjdk.org/jdk9/jdk9/jdk/raw-file/48148c98c95a/src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h
#
# cp libsoftcrypto.h jdk/src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto
#
cp ${THOME}/build/patches/jdk-libsoftcrypto.h jdk/src/jdk.crypto.ucrypto/solaris/native/libj2ucrypto/libsoftcrypto.h

#
# jdk9 needs objcopy, which is in /usr/gnu/bin
# but the objcopy stuff doesn't actually work
#

#
# jdk9 wants Studio 5.13 == Studio 12.4
#

#
# I have no idea what the version string should look like
#

#
# Note for Solaris 10
# first error is that it wants gmake
# next it wants at least java 8 as the boot jdk
# wants solaris as, so need /usr/ccs/bin in the path
# wants objcopy, at least v21.1 (shipped 2.15 won't work)
# patch 149064-01 or your own copy needed
# needs cups, just copy /usr/include/cups from a system that has it
# gobjcopy stuff doesn't actually work anyway, so try with -k
# get a build error
# "/home/ptribble/ud/openjdk9/hotspot/src/os/solaris/vm/perfMemory_solaris.cpp", line 339: Error: d_fd is not a member of DIR.
# [that's just posix - needs __XOPEN_OR_POSIX defined, or use dd_fd]
#

#
# build on Tribblix m20.5, which has the libc compatibility fixes
#
# cd $HOME
# pbzcat /packages/localsrc/Studio/Studio12.4/SolarisStudio12.4-solaris-x86-bin.tar.bz2 | tar xf -
# mv SolarisStudio12.4-solaris-x86-bin/solarisstudio12.4 .
#
# iropt needs libmmheap.so.1
#
# OK, they're in the Studio12.4 download
# ~/SolarisStudio12.4-solaris-x86-bin/patches/system/120754-14
# SUNWlibmsr/reloc/lib/{,amd64/}libmmheap.so.1
#
# cp libmmheap.so.1 ~/solarisstudio12.4/lib/compilers/sys/
# cp amd64/libmmheap.so.1 ~/solarisstudio12.4/lib/compilers/sys/amd64/
#
# or for sparc
# ~/SolarisStudio12.4-solaris-sparc-bin/patches/system/120753-14
# SUNWlibmsr/reloc/lib/{,sparcv9/}libmmheap.so.1
#
# cp libmmheap.so.1 ~/solarisstudio12.4/lib/compilers/sys/
# cp sparcv9/libmmheap.so.1 ~/solarisstudio12.4/lib/compilers/sys/sparcv9/
#
# it wants objcopy, hence /usr/sfw/bin in the path
# fix the d_fd error -> dd_fd
#
# the gobjcopy stuff doesn't actually work, so disable it
# --with-native-debug-symbols=none
#
# add --enable-dtrace=no --disable-hotspot-gtest like later versions,
# especially as we're only ever going to use this as part of a build
# chain to support later versions
#
env PATH=${HOME}/solarisstudio12.4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin bash ./configure --enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk1.8.0 --with-native-debug-symbols=none --enable-dtrace=no --disable-hotspot-gtest
env PATH=${HOME}/solarisstudio12.4/bin:/usr/bin:/usr/sbin:/usr/sfw/bin gmake -k all


#
# there's also a hint about
# --disable-warnings-as-errors
#

#
# first testing looks like this:
#
# cd build/solaris-x86_64-normal-server-release/images/jdk
# ./bin/java -version
# openjdk version "9-internal"
# OpenJDK Runtime Environment (build 9-internal+0-adhoc.ptribble.openjdk9)
# OpenJDK 64-Bit Server VM (build 9-internal+0-adhoc.ptribble.openjdk9, mixed mode)
#

rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk9
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-normal-server-release/images/jdk; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk9 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk9 jdk9
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk9 .
# jdk9 is already EOF, no default links
cd /tmp/jdk/usr/versions
rm `find . -name '*.diz'`

#
# need to create a certificate bundle
#
# this actually needs to be a JKS keystore, not a PKCS12 keystore
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/1739631
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl

cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk9/lib/security

#
# edit .../conf/security/sunpkcs11-solaris.cfg and add the following to disabledMechanisms
#
# # the following mechanisms are disabled due to lack of digest cloning support
# # need to fix 6414899 first
#   CKM_MD5
#   CKM_SHA256
#   CKM_SHA384
#   CKM_SHA512
#

${THOME}/build/create_pkg TRIBopenjdk9 /tmp/jdk
