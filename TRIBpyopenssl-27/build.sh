#!/bin/sh
#
${THOME}/build/unpack pyOpenSSL-19.1.0
cd pyOpenSSL-19.1.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyopenssl-27 /tmp/pil
cd ..
rm -fr /tmp/pil
