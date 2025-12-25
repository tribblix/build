#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only libofx-0.10.9 -C -DENABLE_OFXCONNECT=OFF
${THOME}/build/genpkg TRIBlibofx libofx-0.10.9
