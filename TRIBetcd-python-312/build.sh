#!/bin/sh
#
${THOME}/build/unpack python-etcd-0.4.5
cd python-etcd-0.4.5
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBetcd-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
