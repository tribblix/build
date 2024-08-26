#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64only fluidsynth-2.3.6 -C "-Denable-openmp=off -DCMAKE_PREFIX_PATH=/usr/lib/`$THOME/build/getarch`/cmake"
${THOME}/build/genpkg TRIBfluidsynth fluidsynth-2.3.6
