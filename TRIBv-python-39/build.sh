#!/bin/sh
#
# NB. TRIBv-python-39 must not be installed, or the make
# install step will get confused
#
# 3.9 is 64-bit
#
${THOME}/build/dobuild +64only Python-3.9.7 -P /usr/versions/python-3.9 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-39 Python-3.9.7
