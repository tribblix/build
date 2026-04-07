#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libpcap-1.10.6
${THOME}/build/genpkg TRIBlibpcap libpcap-1.10.6
