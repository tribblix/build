#!/bin/sh
#
env CPPFLAGS="-D_XPG6" ${THOME}/build/dobuild -64 poppler-0.26.5 -C "--enable-xpdf-headers"
${THOME}/build/genpkg TRIBpoppler poppler-0.26.5
