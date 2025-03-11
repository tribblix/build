#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only brotli-1.1.0
${THOME}/build/genpkg TRIBbrotli brotli-1.1.0
