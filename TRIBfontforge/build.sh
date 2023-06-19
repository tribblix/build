#!/bin/sh
#
${THOME}/build/cmbuild -gnu -64 fontforge-20230101 -C "-DENABLE_PYTHON_SCRIPTING=OFF -DENABLE_PYTHON_EXTENSION=OFF"
${THOME}/build/genpkg TRIBfontforge fontforge-20230101
