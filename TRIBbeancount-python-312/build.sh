#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the requirements aren't terribly well specified, but see also what's in
# beancount/scripts/deps.py to add magic ply dateutil requests
# beangulp needs beautifulsoup chardet click lxml magic
# beanprice needs dateutil requests
#
${THOME}/build/pkg_setup_py TRIBbeancount-python-312 beancount-3.0.0 beanprice-1.2.1 beangulp-0.1.1
