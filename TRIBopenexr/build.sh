#!/bin/sh
#
# 3.2 bumps the SONAME
#
${THOME}/build/cmbuild -64only openexr-3.1.13
${THOME}/build/genpkg TRIBopenexr openexr-3.1.13
