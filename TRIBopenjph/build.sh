#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only OpenJPH-0.25.0
${THOME}/build/genpkg TRIBopenjph OpenJPH-0.25.0
