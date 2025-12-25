#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/imakebuild -64only -n xantfarm xantfarm_14Aug2014
${THOME}/build/genpkg TRIBxantfarm xantfarm_14Aug2014
