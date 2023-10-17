#!/bin/sh
#
#
# a pep518 build requires --no-build-isolation otherwise it tries
# to build its own numpy, which would fail as it doesn't have the
# modifications we need to make it build successfully
#
# but that also means that we have to have all the modules that pip
# needs installed ahead of time, see build_require
#
# PATH so it can find the cython executable
# it drops -m64 somewhere, so force with CC
#
# it wants openmp, but ought to correctly work out that it won't work here
# if it doesn't, you may need to edit openmp_helpers.py and make
# check_openmp_support() unconditionally return False
#
${THOME}/build/unpack scikit-learn-1.3.1
cd scikit-learn-1.3.1

env CC="gcc -m64" LDFLAGS=-m64 CXXFLAGS=-m64 CFLAGS=-m64 PATH=/usr/versions/python-3.11/bin:$PATH /usr/versions/python-3.11/bin/python3 -mpip install --no-deps --isolated --no-input --exists-action=a --disable-pip-version-check --no-warn-script-location --compile --no-build-isolation --root=/tmp/pil -I .

${THOME}/build/create_pkg TRIBscikit-learn-python-311 /tmp/pil
cd ..
rm -fr /tmp/pil
