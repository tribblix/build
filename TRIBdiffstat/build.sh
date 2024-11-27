#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only diffstat-1.67
${THOME}/build/genpkg TRIBdiffstat diffstat-1.67
