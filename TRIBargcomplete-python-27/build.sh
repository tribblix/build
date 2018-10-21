#!/bin/sh
#
${THOME}/build/unpack argcomplete-1.9.4
cd argcomplete-1.9.4
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBargcomplete-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
