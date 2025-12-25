#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env CC="gcc -m64" $THOME/build/dobuild -64only ocaml-4.14.1
${THOME}/build/genpkg TRIBocaml ocaml-4.14.1
