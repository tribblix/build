#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# scanpci installed by fixinstall
#
${THOME}/build/dobuild -64 libpciaccess-0.18.1
${THOME}/build/genpkg TRIBdiagnostic-scanpci libpciaccess-0.18.1
