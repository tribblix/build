#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs gnu msgfmt
env LD_RUN_PATH=/usr/versions/python-3.11/lib ${THOME}/build/pkg_setup_py -gnu TRIBbreezy-python-311 breezy-3.3.7
