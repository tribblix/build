#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# (built in python)
#
# only works in 3.12 due to the way it uses curses
#
${THOME}/build/pkg_pep518 -N -v 312 TRIBdurdraw durdraw-0.29.0
