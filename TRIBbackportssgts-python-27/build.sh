#!/bin/sh
#
${THOME}/build/unpack backports.shutil_get_terminal_size-1.0.0
cd backports.shutil_get_terminal_size-1.0.0
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBbackportssgts-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
