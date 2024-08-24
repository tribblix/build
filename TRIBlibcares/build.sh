#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/dobuild +64 c-ares-1.33.1
$THOME/build/genpkg TRIBlibcares c-ares-1.33.1
