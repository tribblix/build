#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only tcsh-6.24.14
${THOME}/build/genpkg TRIBshell-tcsh tcsh-6.24.14
