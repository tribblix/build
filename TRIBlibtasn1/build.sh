#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libtasn1-4.21.0
${THOME}/build/genpkg TRIBlibtasn1 libtasn1-4.21.0
