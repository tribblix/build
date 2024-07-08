#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gdbm-1.24
${THOME}/build/genpkg TRIBgdbm gdbm-1.24
