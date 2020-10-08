#!/bin/sh
#
# NB. TRIBv-python-37 must not be installed, or the make
# install step will get confused
#
# NOTE: update the versions of the tests and tkinter packages as well
# as those components are split out, the packages are automatically
# created by the fixit script
#
${THOME}/build/dobuild Python-3.7.9 -P /usr/versions/python-3.7 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-37 Python-3.7.9
