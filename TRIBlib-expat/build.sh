#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 expat-2.7.4
${THOME}/build/genpkg TRIBlib-expat expat-2.7.4
