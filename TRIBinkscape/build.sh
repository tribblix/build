#!/bin/sh
#
# install the *mm packages, sigc++, TRIBboehm-gc TRIBlibgsl TRIBboost
#
${THOME}/build/cmbuild -gnu -C "--enable-dbusapi --enable-lcms --enable-poppler-cairo" inkscape-0.92.3
${THOME}/build/genpkg TRIBinkscape inkscape-0.92.3
