#!/bin/sh
#
${THOME}/build/unpack python-etcd-0.4.5
cd python-etcd-0.4.5
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBetcd-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
