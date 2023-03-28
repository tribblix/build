#!/bin/sh
#
# [seems orphaned, no accurate idea where to get it from]
#
${THOME}/build/cmbuild -64 openal-soft-1.15.1 -C "-DCMAKE_BUILD_TYPE=Release -DEXAMPLES=NO" +C "-DCMAKE_BUILD_TYPE=Release -DEXAMPLES=NO -D LIB_SUFFIX=/`$THOME/build/getarch`"
${THOME}/build/genpkg TRIBopenal openal-soft-1.15.1
