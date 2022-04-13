#!/bin/sh
#
# pytz is deprecated, but marked as a dependency for transitional purposes
#
${THOME}/build/unpack Django-4.0.4
cd Django-4.0.4
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBdjango4-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
