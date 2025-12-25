#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libcdio-2.1.0
${THOME}/build/genpkg TRIBlibcdio libcdio-2.1.0
