#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only -gnu libwnck-3.30.0 -C "--disable-introspection --program-suffix=3"
${THOME}/build/genpkg TRIBlibwnck3 libwnck-3.30.0
