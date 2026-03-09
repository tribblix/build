#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS=-lcurses ${THOME}/build/dobuild -64only emacs-30.2 -P /usr/versions/emacs-30 -C "--with-xft --with-xpm --without-sqlite3"
${THOME}/build/genpkg TRIBv-emacs-30 emacs-30.2
