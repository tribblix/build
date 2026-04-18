#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 ngtcp2-1.22.1
${THOME}/build/genpkg TRIBlibngtcp2 ngtcp2-1.22.1
