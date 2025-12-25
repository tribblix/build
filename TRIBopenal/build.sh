#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# necessary preconf
#
${THOME}/build/cmbuild -64 openal-soft-1.23.1 -C "-DALSOFT_UTILS=NO -DALSOFT_EXAMPLES=NO"
${THOME}/build/genpkg TRIBopenal openal-soft-1.23.1
