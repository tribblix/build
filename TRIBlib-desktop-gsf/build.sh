#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu libgsf-1.14.54
${THOME}/build/genpkg TRIBlib-desktop-gsf libgsf-1.14.54
