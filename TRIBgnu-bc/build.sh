#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only bc-1.08.1 -P /usr/gnu
${THOME}/build/genpkg TRIBgnu-bc bc-1.08.1
