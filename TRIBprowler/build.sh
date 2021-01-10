#!/bin/sh
#
rm -fr /tmp/ckp
mkdir -p /tmp/ckp/usr/versions
cd /tmp/ckp/usr/versions
git clone https://github.com/toniblyx/prowler
sed -i s:linux-musl:solaris: prowler/include/os_detector
${THOME}/build/create_pkg TRIBprowler /tmp/ckp
cd
rm -fr /tmp/ckp
