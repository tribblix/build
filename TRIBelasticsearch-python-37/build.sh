#!/bin/sh
#
# note that elastic have messed with the name and versioning
# it was originally called elasticsearch-py, now it's got the
# simple elasticsearchN name where N is the release
#
${THOME}/build/unpack elasticsearch6-6.8.1
cd elasticsearch6-6.8.1
/usr/versions/python-3.7/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.7/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBelasticsearch-python-37 /tmp/pil
cd ..
rm -fr /tmp/pil
