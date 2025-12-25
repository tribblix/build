#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only cabextract-1.11
${THOME}/build/genpkg TRIBcabextract cabextract-1.11
