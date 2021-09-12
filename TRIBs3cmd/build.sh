#!/bin/sh
#
# needs dateutil and magic
#
# need a much more recent version that the 2.10 release
# for python39 compatibility
#
${THOME}/build/unpack s3cmd-master
cd s3cmd-master
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBs3cmd /tmp/pil
cd ..
rm -fr /tmp/pil
