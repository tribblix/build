#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only dillo-3.2.0 -C --enable-tls
${THOME}/build/genpkg TRIBdillo dillo-3.2.0
