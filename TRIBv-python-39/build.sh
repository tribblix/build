#!/bin/sh
#
# NB. TRIBv-python-39 must not be installed, or the make
# install step will get confused
#
# 3.9 is in testing, 3.7 is still primary
#
${THOME}/build/dobuild +64only Python-3.9.1 -P /usr/versions/python-3.9 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-39 Python-3.9.1
