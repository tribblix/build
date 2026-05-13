#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs rust and gnu msgfmt
#
env LD_RUN_PATH=/usr/versions/python-3.13/lib ${THOME}/build/pkg_pep518 -N TRIBbreezy-python-313 breezy-3.3.21
