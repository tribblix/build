#!/bin/sh
#
${THOME}/build/pkg_setup_py TRIBmarkupsafe-python-39 MarkupSafe-2.1.1
cd MarkupSafe-1.1.1
/usr/versions/python-3.9/bin/python3 setup.py build
rm -fr /tmp/pil
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
${THOME}/build/create_pkg TRIBmarkupsafe-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
