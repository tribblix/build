#!/bin/sh
#
env PYTHON=/usr/bin/python2.7 ${THOME}/build/dobuild -gnu gnome-doc-utils-0.20.10
${THOME}/build/genpkg TRIBgnome-doc-utils gnome-doc-utils-0.20.10
