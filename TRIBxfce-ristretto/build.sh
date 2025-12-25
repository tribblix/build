#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu -64only ristretto-0.13.2
${THOME}/build/genpkg TRIBxfce-ristretto ristretto-0.13.2
