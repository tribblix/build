#!/bin/sh
#
# needed to build xcursor-themes
#
${THOME}/build/dobuild -64only xcursorgen-1.0.8
${THOME}/build/genpkg TRIBxcursorgen xcursorgen-1.0.8
