#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need to accept the license here, otherwise it asks for it in an infinite
# loop that you cannot access
#
# it's very slow, so run multiple jobs to increase parallelism
#
env PATH=/usr/gnu/bin:/usr/versions/Qt-5/bin/`${THOME}/build/getarch`:$PATH $THOME/build/pkg_pep518 -N -C "--config-setting=--confirm-license= --config-setting=--jobs=4" TRIBpyqt5-python-312 PyQt5-5.15.11
