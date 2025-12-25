#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only https://github.com/ptribble/tslim
${THOME}/build/genpkg TRIBtslim tslim
