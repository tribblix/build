#!/bin/sh
#
# NB. TRIBv-python-37 must not be installed, or the make
# install step will get confused
#
# this is an experimental build. It has path conflicts with 3.6,
# and won't actually be any use until all the modules get updated
#
${THOME}/build/dobuild Python-3.7.0 -P /usr/versions/python-3.7 -L -C --enable-shared
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-37 Python-3.7.0
