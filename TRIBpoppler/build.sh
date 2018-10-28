#!/bin/sh
#
# bumping the version requires rebuilding all dependants as the
# SONAME changes
#
env CPPFLAGS="-D_XPG6" ${THOME}/build/dobuild -64 poppler-0.56.0 -C "--enable-xpdf-headers --disable-introspection"
${THOME}/build/genpkg TRIBpoppler poppler-0.56.0
