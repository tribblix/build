#!/bin/sh
#
# NB. TRIBv-python-35 must not be installed, or the make
# install step will get confused
#
${THOME}/build/dobuild Python-3.5.2 -P /usr/versions/python-3.5 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-35 Python-3.5.2
