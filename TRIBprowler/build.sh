#!/bin/sh
#
# this is the last bash-based version
#
rm -fr /tmp/ckp
mkdir -p /tmp/ckp/usr/versions
cd /tmp/ckp/usr/versions
git clone https://github.com/prowler-cloud/prowler
cd prowler
git checkout 2.12.1
sed -i s:linux-musl:solaris: include/os_detector
${THOME}/build/create_pkg TRIBprowler /tmp/ckp
cd
rm -fr /tmp/ckp
