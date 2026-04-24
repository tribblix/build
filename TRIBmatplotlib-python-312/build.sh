#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# force the use of the system freetype
#
# note that if pyqt5 is installed it will try and use that as the
# default backend, and it likely won't work
# either uninstall pyqt5, or make sure tkinter is installed and invoke python
# with env MPLBACKEND=tkagg ...
#
env CXXFLAGS=-m64 CFLAGS=-m64 CC="gcc -m64" PATH=/usr/versions/python-3.12/bin:$PATH ${THOME}/build/pkg_pep518 -N -C "--config-settings=setup-args=-Dsystem-freetype=true --config-settings=setup-args=-Db_lto=false" TRIBmatplotlib-python-312 matplotlib-3.10.9
