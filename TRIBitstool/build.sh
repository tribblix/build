#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild itstool-2.0.7 -C PYTHON=/usr/versions/python-3.12/bin/python3
${THOME}/build/genpkg TRIBitstool itstool-2.0.7
