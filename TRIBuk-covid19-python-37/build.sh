#!/bin/sh
#

#
# the source tarball is busted so use a github checkout instead
#
#${THOME}/build/unpack uk_covid19-1.2.0
#cd uk_covid19-1.2.0
#
rm -fr coronavirus-dashboard-api-python-sdk
git clone https://github.com/publichealthengland/coronavirus-dashboard-api-python-sdk
cd coronavirus-dashboard-api-python-sdk
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBuk-covid19-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
