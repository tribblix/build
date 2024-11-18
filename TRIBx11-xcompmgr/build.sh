#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xcompmgr-1.1.10
${THOME}/build/genpkg TRIBx11-xcompmgr xcompmgr-1.1.10
