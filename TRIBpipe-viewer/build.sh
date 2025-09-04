#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only pv-1.9.34 -C --disable-nls
${THOME}/build/genpkg TRIBpipe-viewer pv-1.9.34
