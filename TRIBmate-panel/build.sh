#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only +gnu mate-panel-1.26.4 -C --disable-introspection
${THOME}/build/genpkg TRIBmate-panel mate-panel-1.26.4
