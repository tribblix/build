#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# units_cur is a python script, tell it precisely which python to use
#
${THOME}/build/dobuild -64only units-2.24 -P /usr/gnu -C PYTHON=/usr/bin/python3.12
${THOME}/build/genpkg TRIBgnu-units units-2.24
