#!/bin/tcsh
#

#
# the ga tarball can be obtained from
# https://openjdk-sources.osci.io/openjdk8/
# eg
# https://openjdk-sources.osci.io/openjdk8/openjdk8u332-ga.tar.xz
#
# check the build number corresponding to GA here
# https://github.com/openjdk/jdk8u/tags
# ga for 8u332 was b09
#
# this one is a little messy, the ga tag came a bit late
# the tarball and the unpacked directory don't match
# and there's a patch to fix up the scm detection logic
#
cd ~/ud
${THOME}/build/unpack openjdk8u332-ga
cd jdk8u332-b09

#
# the build fails if it finds gobjcopy
# delete it from where it thinks it should be
# and make sure it's not in the PATH
#
# (as root)
#
cd /usr/sfw/bin
rm gobjcopy

#
# The fcs is magic to hide the milestone from the version string:
#
env PATH=${HOME}/sunstudio12.1/bin:/usr/bin:/usr/sbin bash ./configure --with-milestone=fcs --with-update-version=332 --with-build-number=b09 --enable-unlimited-crypto --with-jobs=3
# SPARC requires env HOTSPOT_DISABLE_DTRACE_PROBES=true ...
env PATH=${HOME}/sunstudio12.1/bin:/usr/bin:/usr/sbin gmake all

#
# (as root)
#
cd /usr/sfw/bin
ln -s ../../gnu/bin/objcopy gobjcopy

#
# first testing looks like this:
#
# cd build/solaris-x86_64-normal-server-release/images/j2sdk-image
# ./bin/java -version
# openjdk version "1.8.0_332"
# OpenJDK Runtime Environment (build 1.8.0_332-b09)
# OpenJDK 64-Bit Server VM (build 25.332-b09, mixed mode)
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
mkdir -p /tmp/jdk/usr/versions/openjdk1.8.0_332
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-normal-server-release/images/j2sdk-image; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk1.8.0_332 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk1.8.0_332 jdk1.8.0
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk1.8.0_332 .
# latest is now jdk11
#ln -s openjdk1.8.0_332 latest
#mkdir -p /tmp/jdk/usr/bin
#cd /tmp/jdk/usr/bin
#ln -s ../jdk/latest/bin/* .
#rm -f amd64 sparcv9
#cd /tmp/jdk/usr/versions
#rm `find . -name '*.diz'`
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk1.8.0_332/jre/lib/security

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

${THOME}/build/create_pkg TRIBopenjdk8u332 /tmp/jdk
