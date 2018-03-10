#!/bin/sh
#
${THOME}/build/unpack backports.functools_lru_cache-1.5
cd backports.functools_lru_cache-1.5
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBlru-cache-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
