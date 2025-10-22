#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xorgxrdp-0.10.4
${THOME}/build/genpkg TRIBxorgxrdp xorgxrdp-0.10.4
