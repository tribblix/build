#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only vala-0.56.1 -C --disable-valadoc
${THOME}/build/genpkg TRIBvala vala-0.56.1
