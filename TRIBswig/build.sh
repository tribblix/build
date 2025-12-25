#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only swig-4.1.1
${THOME}/build/genpkg TRIBswig swig-4.1.1
