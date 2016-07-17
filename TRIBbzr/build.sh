#!/bin/sh
#
# bzr (needed for consul build via go)
#
${THOME}/build/unpack bzr-2.7.0
cd bzr-2.7.0
gsed -i s:/etc/ssl/certs/ca-certificates.crt:/etc/openssl/cacert.pem: bzrlib/transport/http/_urllib2_wrappers.py
python setup.py build
rm -fr /tmp/bz
python setup.py install --root=/tmp/bz
${THOME}/build/create_pkg TRIBbzr /tmp/bz
rm -fr /tmp/bz
