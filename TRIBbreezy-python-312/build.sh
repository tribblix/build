#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs rust and gnu msgfmt
#
env LD_RUN_PATH=/usr/versions/python-3.12/lib ${THOME}/build/pkg_pep518 -N TRIBbreezy-python-312 breezy-3.3.17
