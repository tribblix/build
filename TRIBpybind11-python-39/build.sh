#!/bin/sh
#
${THOME}/build/unpack pybind11-2.9.2
${THOME}/build/unpack pybind11_global-2.9.2
rm -fr /tmp/pil
cd pybind11-2.9.2
/usr/versions/python-3.9/bin/python3 setup.py build
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
cd ..
cd pybind11_global-2.9.2
/usr/versions/python-3.9/bin/python3 setup.py build
/usr/versions/python-3.9/bin/python3 setup.py install --root=/tmp/pil
cd ..
${THOME}/build/create_pkg TRIBpybind11-python-39 /tmp/pil
cd ..
rm -fr /tmp/pil
