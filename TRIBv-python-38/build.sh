#!/bin/sh
#
# NB. TRIBv-python-38 must not be installed, or the make
# install step will get confused
#
# 3.8 is in testing, 3.7 is still primary
# not all modules have yet been built against this version
#
${THOME}/build/dobuild +64only Python-3.8.5 -P /usr/versions/python-3.8 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-38 Python-3.8.5
