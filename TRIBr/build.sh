#!/bin/sh
#
# note that readline can cause build failures elsewhere
# so shouldn't be left installed on a build system
#
zap install-overlay fortran
zap install TRIBgnu-libiconv TRIBreadline
env TRIBBLIX_CFLAGS=-I/usr/gnu/include TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" $THOME/build/dobuild -gnu R-4.2.1 -C --disable-openmp

cd R-4.2.1
gmake check
cd ..

$THOME/build/genpkg TRIBr R-4.2.1 
