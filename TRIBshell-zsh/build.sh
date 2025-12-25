#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# need a preconf script and -L, which enables dynamic modules
#
${THOME}/build/dobuild +64only zsh-5.9 -L
${THOME}/build/genpkg TRIBshell-zsh zsh-5.9
