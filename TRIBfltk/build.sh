#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# rename the source tarball
# mv fltk-1.3.9-source.tar.bz2 fltk-1.3.9.tar.bz2
#
${THOME}/build/dobuild -64only fltk-1.3.9 -C --enable-shared
${THOME}/build/genpkg TRIBfltk fltk-1.3.9
