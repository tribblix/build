#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64only -gnu findutils-4.10.0 -P /usr/gnu
${THOME}/build/genpkg TRIBfile-gnu-findutils findutils-4.10.0
