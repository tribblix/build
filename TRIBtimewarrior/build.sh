#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only timew-1.9.1
${THOME}/build/genpkg TRIBtimewarrior timew-1.9.1
