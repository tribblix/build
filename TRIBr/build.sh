#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# note that readline can cause build failures elsewhere
# so shouldn't be left installed on a build system
#
zap install-overlay fortran
zap install TRIBgnu-libiconv TRIBreadline
env TRIBBLIX_CFLAGS=-I/usr/gnu/include TRIBBLIX_LDFLAGS="-L/usr/gnu/lib/`$THOME/build/getarch` -R/usr/gnu/lib/`$THOME/build/getarch`" FFLAGS=-m64 $THOME/build/dobuild -gnu -64only R-4.4.1 -C --disable-openmp

cd R-4.4.1-64bit
gmake check
cd ..

$THOME/build/genpkg TRIBr R-4.4.1
