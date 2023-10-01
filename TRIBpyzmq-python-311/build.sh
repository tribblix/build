#!/bin/sh
#
# builds the bundled native libzmq, rather than using a system one
#
# the setup.py build fails, as it builds things quite differently
#
${THOME}/build/pkg_pep518 TRIBpyzmq-python-311 pyzmq-25.1.1
