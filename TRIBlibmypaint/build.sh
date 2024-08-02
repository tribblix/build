#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64 -gnu libmypaint-1.6.1 -C --enable-introspection=no
${THOME}/build/genpkg TRIBlibmypaint libmypaint-1.6.1
