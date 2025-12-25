#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64only bash-5.2.21
${THOME}/build/genpkg TRIBshell-bash bash-5.2.21
