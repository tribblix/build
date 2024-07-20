#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# really is just 'make install'
#
${THOME}/build/unpack flawfinder-2.0.19
${THOME}/build/genpkg -M prefix=/usr TRIBflawfinder flawfinder-2.0.19 
