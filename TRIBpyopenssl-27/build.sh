#!/bin/sh
#
${THOME}/build/unpack pyOpenSSL-20.0.1
cd pyOpenSSL-20.0.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBpyopenssl-27 /tmp/pil
cd ..
rm -fr /tmp/pil
