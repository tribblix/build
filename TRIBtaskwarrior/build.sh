#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only task-3.0.2
${THOME}/build/genpkg TRIBtaskwarrior task-3.0.2
