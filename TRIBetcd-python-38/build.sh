#!/bin/sh
#
${THOME}/build/unpack python-etcd-0.4.5
cd python-etcd-0.4.5
/usr/versions/python-3.8/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.8/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBetcd-python-38 /tmp/pil
cd ..
rm -fr /tmp/pil
