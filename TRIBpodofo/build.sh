#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only podofo-0.10.3 -C -DPODOFO_BUILD_LIB_ONLY=TRUE
${THOME}/build/genpkg TRIBpodofo podofo-0.10.3
