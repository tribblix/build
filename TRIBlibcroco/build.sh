#!/bin/sh
#
${THOME}/build/dobuild -64 libcroco-0.6.13 -C "--disable-Bsymbolic --disable-maintainer-mode --disable-dependency-tracking"
${THOME}/build/genpkg TRIBlibcroco libcroco-0.6.13
