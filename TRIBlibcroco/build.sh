#!/bin/sh
#
${THOME}/build/dobuild -64 libcroco-0.6.8 -C "--disable-Bsymbolic --disable-maintainer-mode"
${THOME}/build/genpkg TRIBlibcroco libcroco-0.6.8
