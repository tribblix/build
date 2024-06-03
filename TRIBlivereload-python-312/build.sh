#!/bin/sh
#
${THOME}/build/unpack livereload-2.6.3
cd livereload-2.6.3
/usr/versions/python-3.12/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.12/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBlivereload-python-312 /tmp/pil
cd ..
rm -fr /tmp/pil
