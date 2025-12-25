#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only -gnu sakura-3.8.7
${THOME}/build/genpkg TRIBsakura sakura-3.8.7
