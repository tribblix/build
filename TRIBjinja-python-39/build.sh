#!/bin/sh
#
# needs Babel MarkupSafe
#
${THOME}/build/unpack Jinja2-2.11.3
cd Jinja2-2.11.3
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBjinja-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
