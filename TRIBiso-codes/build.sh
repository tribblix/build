#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# easier to pull the tarball from the omnios mirror
# https://mirrors.omnios.org/iso-codes/
#
${THOME}/build/dobuild iso-codes-v4.19.0
${THOME}/build/genpkg TRIBiso-codes iso-codes-v4.19.0
