#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libedit-20260512-3.1
${THOME}/build/genpkg TRIBlibedit libedit-20260512-3.1
