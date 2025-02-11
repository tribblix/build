#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only proj-9.5.1
${THOME}/build/genpkg TRIBproj proj-9.5.1
