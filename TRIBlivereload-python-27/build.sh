#!/bin/sh
#
${THOME}/build/unpack livereload-2.5.2
cd livereload-2.5.2
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBlivereload-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
