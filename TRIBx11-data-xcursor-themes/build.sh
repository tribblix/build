#!/bin/sh
#
# requires xcursorgen as a build dependency
#
${THOME}/build/dobuild xcursor-themes-1.0.5
${THOME}/build/genpkg TRIBx11-data-xcursor-themes xcursor-themes-1.0.5
