#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
$THOME/build/imakebuild -64only -n xli-2006-11-10 xli_1.17.0+20061110.orig
$THOME/build/imakebuild -64only ptvtwm-1.0b3
#
# fixinstall will copy xloadimage to the right place
#
${THOME}/build/genpkg -I "install install.man" TRIBtvtwm ptvtwm-1.0b3
