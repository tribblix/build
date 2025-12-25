#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only jansson-2.14
${THOME}/build/genpkg TRIBjansson jansson-2.14
