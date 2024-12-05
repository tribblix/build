#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only transset-1.0.4
${THOME}/build/genpkg TRIBx11-transset transset-1.0.4
