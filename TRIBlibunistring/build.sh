#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# 1.1 bumps the SONAME
#
${THOME}/build/dobuild -64only libunistring-1.0
${THOME}/build/genpkg TRIBlibunistring libunistring-1.0
