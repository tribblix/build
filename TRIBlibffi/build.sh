#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the SONAME gets bumped, so ship the old version as well for binary
# compatibility
#
${THOME}/build/dobuild -64 libffi-3.2.1
${THOME}/build/dobuild -64 libffi-3.4.4 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBlibffi libffi-3.2.1 libffi-3.4.4
