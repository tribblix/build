#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only pcaudiolib-1.3
${THOME}/build/genpkg TRIBpcaudiolib pcaudiolib-1.3
