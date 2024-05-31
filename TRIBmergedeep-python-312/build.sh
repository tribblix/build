#!/bin/sh
#
${THOME}/build/unpack mergedeep-1.3.4
cd mergedeep-1.3.4
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmergedeep-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
