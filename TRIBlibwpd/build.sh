#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libwpd-0.10.3
${THOME}/build/genpkg TRIBlibwpd libwpd-0.10.3
