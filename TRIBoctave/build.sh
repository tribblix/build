#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# initial build for testing; we could do with adding hdf5, glpk, qhull
#
env FFLAGS=-m64 ${THOME}/build/dobuild -64only octave-11.2.0 -C "--disable-openmp --disable-readline --disable-dependency-tracking"

${THOME}/build/genpkg TRIBoctave octave-11.2.0
