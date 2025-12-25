#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libcddb-1.3.2
${THOME}/build/genpkg TRIBlibcddb libcddb-1.3.2
