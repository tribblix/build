#!/bin/sh
#
# NB. TRIBv-python-38 must not be installed, or the make
# install step will get confused
#
# 3.8.0 exists only to test that it builds and works
# no modules have yet been built against this version
#
${THOME}/build/dobuild Python-3.8.0 -P /usr/versions/python-3.8 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-38 Python-3.8.0
