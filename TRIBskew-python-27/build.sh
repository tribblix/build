#!/bin/sh
#
# can't use a release tarball for pypi as it's hopelessly
# out of date
#
rm -fr skew
git clone https://github.com/scopely-devops/skew.git
cd skew
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBskew-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
