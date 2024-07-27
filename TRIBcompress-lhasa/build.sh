#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# lhasa, use master from github as the last release was 2016
#
${THOME}/build/dobuild -64only lhasa-master
${THOME}/build/genpkg TRIBcompress-lhasa lhasa-master
