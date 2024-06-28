#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# park in /usr/versions to avoid splatting stuff randomly over /usr
#
${THOME}/build/dobuild znapzend-0.23.2 -P /usr/versions/znapzend
${THOME}/build/genpkg TRIBznapzend znapzend-0.23.2
