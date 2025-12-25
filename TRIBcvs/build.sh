#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only cvs-1.12.13
${THOME}/build/genpkg TRIBcvs cvs-1.12.13
