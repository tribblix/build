#!/bin/sh
#
# NB. TRIBv-python-310 must not be installed, or the make
# install step will get confused
#
# 3.10 is 64-bit
#
# This python needs a rebuilt sqlite with the symbol visibility fixed
#
${THOME}/build/dobuild +64only Python-3.10.8 -P /usr/versions/python-3.10 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-310 Python-3.10.8
