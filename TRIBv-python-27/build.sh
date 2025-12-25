#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild Python-2.7.18 -P /usr/versions/python-2.7 -L -C --enable-shared
${THOME}/build/genpkg TRIBv-python-27 Python-2.7.18
