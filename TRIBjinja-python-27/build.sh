#!/bin/sh
#
# needs Babel MarkupSafe
#
${THOME}/build/unpack Jinja2-2.10.1
cd Jinja2-2.10.1
python setup.py build
rm -fr /tmp/pil
python setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBjinja-python-27 /tmp/pil
cd ..
rm -fr /tmp/pil
