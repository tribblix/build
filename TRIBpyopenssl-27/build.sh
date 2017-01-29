#!/bin/sh
#
${THOME}/build/unpack pyOpenSSL-16.2.0
cd pyOpenSSL-16.2.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyopenssl-27 /tmp/pil
cd ..
rm -fr /tmp/pil
