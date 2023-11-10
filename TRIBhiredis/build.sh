#!/bin/sh
#
${THOME}/build/cmbuild -64only hiredis-1.2.0 -C "-DENABLE_SSL=ON"
${THOME}/build/genpkg TRIBhiredis hiredis-1.2.0
