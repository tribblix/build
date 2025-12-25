#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only doxygen-1.9.8
${THOME}/build/genpkg TRIBdoxygen doxygen-1.9.8
