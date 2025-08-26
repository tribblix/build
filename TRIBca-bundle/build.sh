#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Add the CA bundle
# (has an extra symlink for wget compatibility)
# http://stackoverflow.com/questions/3777075/ssl-certificate-rejected-trying-to-access-github-over-https-behind-firewall
#
# go here:
#  https://curl.se/docs/caextract.html
#
# the version number in pkginfo is the date of the latest version, which
# ought to be the top entry in the list of revisions
#
rm -fr ca-bundle
mkdir ca-bundle
cd ca-bundle
wget https://curl.se/ca/cacert.pem
cat cacert.pem | gawk 'split_after==1{n++;split_after=0} /-----END CERTIFICATE-----/ {split_after=1} {print > "cert" n ".pem"}'
rm -fr /tmp/cab
mkdir -p /tmp/cab/etc/openssl/certs
#
# the final cacert.pem is constructed by postinstall, and can be managed
# with /usr/lib/zap/manage-cacerts
#
cp cacert.pem /tmp/cab/etc/openssl/cacert.pem.dist
for file in cert*.pem
do
  cp $file /tmp/cab/etc/openssl/certs/`openssl x509 -noout -hash -in $file`.0
done
cd /tmp/cab/etc
ln -s openssl ssl
${THOME}/build/create_pkg TRIBca-bundle /tmp/cab
cd
rm -fr /tmp/cab
