#!/bin/sh
#
# 
#


${THOME}/build/pkg_tarball TRIBspotbugs spotbugs-3.1.12






exit 0
#
# this is the old convoluted build from source version
#
${THOME}/build/unpack spotbugs-3.1.8
cd spotbugs-3.1.8
./gradlew build
./gradlew distTar

rm -fr /tmp/gg
mkdir -p /tmp/gg/usr/versions
gzcat spotbugs/build/distributions/spotbugs-3.1.8.tgz | ( cd /tmp/gg/usr/versions ; gtar xf -)
mkdir -p /tmp/gg/usr/bin
(cd /tmp/gg/usr/bin ; ln -s ../../usr/versions/spotbugs-3.1.8/bin/spotbugs .)
${THOME}/build/create_pkg TRIBspotbugs /tmp/gg
rm -fr /tmp/gg

cd ..
