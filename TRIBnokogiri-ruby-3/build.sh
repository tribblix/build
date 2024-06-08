#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the native build of gumbo overrides CFLAGS etc, so we need to pass
# -m64 via CC (whcih it doesn't override)
# also uses Makefiles with gnu syntax
#
env CC="gcc -m64" PATH=/usr/gnu/bin:$PATH ${THOME}/build/pkg_gem TRIBnokogiri-ruby-3 nokogiri -- --use-system-libraries
