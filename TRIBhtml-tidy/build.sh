#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# seems to ignore bindir, so +64 actually puts the binary in
# /usr/bin where we want it, even though it shouldn't
#
${THOME}/build/cmbuild +64 tidy-html5-5.8.0
${THOME}/build/genpkg TRIBhtml-tidy tidy-html5-5.8.0
