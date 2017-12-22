#!/bin/sh
#
# NB. TRIBv-python-36 must not be installed, or the make
# install step will get confused
#
${THOME}/build/dobuild Python-3.6.4 -P /usr/versions/python-3.6 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-36 Python-3.6.4
