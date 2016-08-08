#!/bin/tcsh
#
# You first need to download the tarballs
# this method from BLFS
#
cd /tmp
wget http://hg.openjdk.java.net/jdk8u/jdk8u/archive/jdk8u72-b15.tar.bz2
foreach file ( corba hotspot jaxp jaxws langtools jdk nashorn )
wget http://hg.openjdk.java.net/jdk8u/jdk8u/${file}/archive/jdk8u72-b15.tar.bz2 -O ${file}-jdk8u72-b15.tar.bz2
end
pbzcat jdk8u72-b15.tar.bz2 | tar xf -
mv jdk8u-jdk8u72-b15 openjdk8u72
foreach file ( corba hotspot jaxp jaxws langtools jdk nashorn )
pbzcat ${file}-jdk8u72-b15.tar.bz2 | tar xf -
mv ${file}-jdk8u72-b15 openjdk8u72/$file
end
tar cf ${THOME}/tarballs/openjdk8u72.tar openjdk8u72
gzip ${THOME}/tarballs/openjdk8u72.tar

cd ~/ud
${THOME}/build/unpack openjdk8u72
cd openjdk8u72

#
# the build fails if it finds gobjcopy
# delete it from where it thinks it should be
# and make sure it's not in the PATH
#
cd /usr/sfw/bin
rm gobjcopy

#
# The fcs is magic to hide the milestone from the version string:
#
env PATH=${HOME}/sunstudio12.1/bin:/usr/bin:/usr/sbin bash ./configure --with-milestone=fcs --with-update-version=72 --with-build-number=b15 --enable-unlimited-crypto
env PATH=${HOME}/sunstudio12.1/bin:/usr/bin:/usr/sbin gmake all

cd /usr/sfw/bin
ln -s ../../gnu/bin/objcopy gobjcopy

#
# first testing looks like this:
#
# cd build/solaris-x86_64-normal-server-release/images/j2sdk-image
# ./bin/java -version
# openjdk version "1.8.0_72"
# OpenJDK Runtime Environment (build 1.8.0_72-b15)
# OpenJDK 64-Bit Server VM (build 25.72-b15, mixed mode)
#

#
# need to create a certificate bundle
#
${THOME}/build/patches/mkcacerts -f /etc/openssl/cacert.pem -o /tmp/cacerts -k /usr/jdk/instances/jdk1.8.0/bin/keytool -s /usr/bin/openssl


rm -fr /tmp/jdk
mkdir -p /tmp/jdk/usr/versions/openjdk1.8.0_72
mkdir -p /tmp/jdk/usr/jdk/instances
(cd build/solaris-x86_64-normal-server-release/images/j2sdk-image; tar cf - *) | ( cd /tmp/jdk/usr/versions/openjdk1.8.0_72 ; tar xf -)
cd /tmp/jdk/usr/jdk/instances
ln -s ../../versions/openjdk1.8.0_72 jdk1.8.0
cd /tmp/jdk/usr/jdk
ln -s ../versions/openjdk1.8.0_72 .
ln -s openjdk1.8.0_72 latest
mkdir -p /tmp/jdk/usr/bin
cd /tmp/jdk/usr/bin
ln -s ../jdk/latest/bin/* .
rm amd64
cd /tmp/jdk/usr/versions
rm `find . -name '*.diz'`
cp /tmp/cacerts /tmp/jdk/usr/versions/openjdk1.8.0_72/jre/lib/security

${THOME}/build/create_pkg TRIBopenjdk8u72 /tmp/jdk
