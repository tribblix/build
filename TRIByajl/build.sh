#!/bin/sh
#
$THOME/build/cmbuild -64only yajl-2.1.0 +C "-D LIB_SUFFIX=/`$THOME/build/getarch`"
${THOME}/build/genpkg TRIByajl yajl-2.1.0
