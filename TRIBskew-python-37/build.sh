#!/bin/sh
#
# can't use a release tarball for pypi as it's hopelessly
# out of date
#
rm -fr skew
git clone https://github.com/scopely-devops/skew.git
cd skew
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBskew-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
