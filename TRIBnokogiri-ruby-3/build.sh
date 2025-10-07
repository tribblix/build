#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the native build of gumbo overrides CFLAGS etc, so we need to pass
# -m64 via CC (which it doesn't override)
# also uses Makefiles with gnu syntax
#
env CC="gcc -m64" ${THOME}/build/pkg_gem -gnu TRIBnokogiri-ruby-3 nokogiri -- --use-system-libraries
