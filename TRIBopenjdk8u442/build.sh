#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# the ga tarball can be obtained from here or github
# https://openjdk-sources.osci.io/openjdk8/
#
# check the build number corresponding to GA here
# https://github.com/openjdk/jdk8u/tags
# so you use the correct --with-build-number below
# ga for 8u442 was b06
#
cd ~/ud
${THOME}/build/unpack jdk8u-jdk8u442-ga
cd jdk8u-jdk8u442-ga

#
# The fcs is magic to hide the milestone from the version string.
#

#
# new gcc build
#
env PATH=/usr/gnu/bin:/usr/bin:/usr/sfw/bin bash ./configure \
--with-milestone=fcs --with-update-version=442 --with-build-number=b06 \
--enable-unlimited-crypto --with-boot-jdk=/usr/jdk/instances/jdk1.8.0 \
--with-toolchain-type=gcc \
--with-native-debug-symbols=none \
--with-jobs=3
# the current patches aren't quite enough to enforce all the necessary
# changes to remove the Studio/sparcWorks usage, so we give a bit of
# extra help
# SPARC needs to set ASFLAGS=-m64 but not AS
# SPARC requires env HOTSPOT_DISABLE_DTRACE_PROBES=true ...
env PATH=/usr/gnu/bin:/usr/bin:/usr/sfw/bin gmake all USE_GCC=1 AS=/usr/gnu/bin/as

#
# first testing looks like this:
#
# cd build/solaris-x86_64-normal-server-release/images/j2sdk-image
# ./bin/java -version
# openjdk version "1.8.0_442"
# OpenJDK Runtime Environment (build 1.8.0_442-b06)
# OpenJDK 64-Bit Server VM (build 25.442-b06, mixed mode)
#

#
# need to create a certificate bundle
#
# verify that the TRIBca-bundle package is current and update if necessary
#
# Note that the build creates a cacerts file, but the certificate list
# doesn't seem to be quite as well maintained as the mozilla bundle
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl


rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk1.8.0_442
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-normal-server-release/images/j2sdk-image; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk1.8.0_442 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk1.8.0_442 jdk1.8.0
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk1.8.0_442 .
# latest is now jdk17
#ln -s openjdk1.8.0_442 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
#cd /tmp/jdk/usr/versions
#rm `find . -name '*.diz'`
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk1.8.0_442/jre/lib/security

#
# edit .../jre/lib/security/sunpkcs11-solaris.cfg and add the following to disabledMechanisms
#
# # the following mechanisms are disabled due to lack of digest cloning support
# # need to fix 6414899 first
#   CKM_MD5
#   CKM_SHA256
#   CKM_SHA384
#   CKM_SHA512
#

${THOME}/build/create_pkg TRIBopenjdk8u442 /tmp/jdk

cd
rm -fr /tmp/jdk
