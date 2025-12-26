#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a preconf script to stop invalid compiler flags
#
${THOME}/build/cmbuild -64only doxygen-1.15.0
${THOME}/build/genpkg TRIBdoxygen doxygen-1.15.0
