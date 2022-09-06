#!/bin/sh
#
# the dependencies around [secure] will need looking at
# we still declare them, but urllib3 shouldn't use them
# see https://github.com/urllib3/urllib3/issues/2680
#
${THOME}/build/unpack urllib3-1.26.12
cd urllib3-1.26.12
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBurllib3-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
