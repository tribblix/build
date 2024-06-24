#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS=-lcurses ${THOME}/build/dobuild -64only emacs-28.2 -P /usr/versions/emacs-28 -C "--without-xft --with-xpm --with-cairo"
${THOME}/build/genpkg TRIBv-emacs-28 emacs-28.2
