#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only pekwm-release-0.3.2
${THOME}/build/genpkg TRIBpekwm pekwm-release-0.3.2
