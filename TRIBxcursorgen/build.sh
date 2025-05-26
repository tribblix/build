#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needed to build xcursor-themes
#
${THOME}/build/mesonbuild -64only xcursorgen-1.0.9
${THOME}/build/genpkg TRIBxcursorgen xcursorgen-1.0.9
