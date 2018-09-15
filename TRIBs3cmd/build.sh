#!/bin/sh
#
# needs dateutil
#
${THOME}/build/unpack s3cmd-2.0.2
cd s3cmd-2.0.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBs3cmd /tmp/pil
cd ..
rm -fr /tmp/pil
