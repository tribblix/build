#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the requirements aren't terribly well specified, but see also what's in
# beancount/scripts/deps.py to add magic ply dateutil requests
# beangulp needs beautifulsoup chardet click lxml magic
# beanprice needs dateutil requests
#
env CFLAGS=-m64 ${THOME}/build/pkg_pep518 -N TRIBbeancount-python-312 beancount-3.2.0 beanprice-2.0.0 beangulp-0.2.0 beanquery-0.2.0
