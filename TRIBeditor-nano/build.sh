#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only nano-6.4
${THOME}/build/genpkg TRIBeditor-nano nano-6.4
