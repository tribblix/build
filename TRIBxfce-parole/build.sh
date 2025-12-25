#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu parole-4.18.1
${THOME}/build/genpkg TRIBxfce-parole parole-4.18.1
