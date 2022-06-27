#!/bin/sh
#
$THOME/build/cmbuild -64only fish-3.5.0 -C "-DCMAKE_BUILD_TYPE=Release"
$THOME/build/genpkg TRIBshell-fish fish-3.5.0
