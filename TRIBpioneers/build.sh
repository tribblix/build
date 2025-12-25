#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu pioneers-15.6
${THOME}/build/genpkg TRIBpioneers pioneers-15.6
