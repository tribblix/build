#!/bin/tcsh
#
# You first need to download the tarballs
# this method from BLFS
#
cd /tmp
wget http://hg.openjdk.java.net/jdk8u/jdk8u/archive/jdk8u282-b08.tar.bz2
foreach file ( corba hotspot jaxp jaxws langtools jdk nashorn )
wget http://hg.openjdk.java.net/jdk8u/jdk8u/${file}/archive/jdk8u282-b08.tar.bz2 -O ${file}-jdk8u282-b08.tar.bz2
end
pbzcat jdk8u282-b08.tar.bz2 | tar xf -
mv jdk8u-jdk8u282-b08 openjdk8u282
foreach file ( corba hotspot jaxp jaxws langtools jdk nashorn )
pbzcat ${file}-jdk8u282-b08.tar.bz2 | tar xf -
mv ${file}-jdk8u282-b08 openjdk8u282/$file
end
tar cf ${THOME}/tarballs/openjdk8u282.tar openjdk8u282
pbzip2 ${THOME}/tarballs/openjdk8u282.tar
#
cd ~/ud
${THOME}/build/unpack openjdk8u282
cd openjdk8u282

#
# alternatively the ga tarball can be obtained from
# https://openjdk-sources.osci.io/openjdk8/openjdk8u282-ga.tar.xz
# ga for 8u282 was b08
#
cd ~/ud
${THOME}/build/unpack openjdk8u282-ga
cd jdk8u282-ga

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
env PATH=${HOME}/sunstudio12.1/bin:/usr/bin:/usr/sbin bash ./configure --with-milestone=fcs --with-update-version=282 --with-build-number=b08 --enable-unlimited-crypto
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
# openjdk version "1.8.0_282"
# OpenJDK Runtime Environment (build 1.8.0_282-b08)
# OpenJDK 64-Bit Server VM (build 25.282-b08, mixed mode)
#

#
# need to create a certificate bundle
#
# verify that the TRIBca-bundle package is current and update if necessary
#
# Note that the build creates a cacerts file, but it uses a set of certificates
# from mid-2018, so it's missing many certificates, and some of the certificates
# it has got have expired, so it's of no use to us whatsoever
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl


rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk1.8.0_282
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-normal-server-release/images/j2sdk-image; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk1.8.0_282 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk1.8.0_282 jdk1.8.0
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk1.8.0_282 .
ln -s openjdk1.8.0_282 latest
mkdir -p /tmp/jdk/usr/bin
cd /tmp/jdk/usr/bin
ln -s ../jdk/latest/bin/* .
rm -f amd64 sparcv9
cd /tmp/jdk/usr/versions
rm `find . -name '*.diz'`
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk1.8.0_282/jre/lib/security

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

${THOME}/build/create_pkg TRIBopenjdk8u282 /tmp/jdk
