#!/bin/sh
#
# mate-themes (no tarball for 1.10 or later?)
${THOME}/build/dobuild -gnu mate-themes-1.8.1
${THOME}/build/genpkg TRIBmate-theme mate-themes-1.8.1
