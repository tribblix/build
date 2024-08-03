#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only nsd-4.10.1
${THOME}/build/genpkg TRIBnsd nsd-4.10.1
