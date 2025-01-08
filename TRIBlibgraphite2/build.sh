#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64 graphite2-1.3.14
${THOME}/build/genpkg TRIBlibgraphite2 graphite2-1.3.14
