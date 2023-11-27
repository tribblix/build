#!/bin/sh
#
# install the *mm packages, sigc++, TRIBboehm-gc TRIBlibgsl TRIBboost
#
$THOME/build/cmbuild -gnu -64only inkscape-1.2.2_2022-12-01_b0a8486541 -C "-DWITH_OPENMP=OFF -DWITH_INTERNAL_2GEOM=ON"
${THOME}/build/genpkg TRIBinkscape inkscape-1.2.2_2022-12-01_b0a8486541
