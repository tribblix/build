#!/bin/sh
#
${THOME}/build/unpack pybind11-2.10.0
${THOME}/build/unpack pybind11_global-2.10.0
rm -fr /tmp/pil
cd pybind11-2.10.0
/usr/versions/python-3.10/bin/python3 setup.py build
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
cd ..
cd pybind11_global-2.10.0
/usr/versions/python-3.10/bin/python3 setup.py build
/usr/versions/python-3.10/bin/python3 setup.py install --root=/tmp/pil
cd ..
${THOME}/build/create_pkg TRIBpybind11-python-310 /tmp/pil
cd ..
rm -fr /tmp/pil
