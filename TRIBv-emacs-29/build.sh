#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env LIBS=-lcurses ${THOME}/build/dobuild -64only emacs-29.4 -P /usr/versions/emacs-29 -C "--with-xft --with-xpm --without-sqlite3"
${THOME}/build/genpkg TRIBv-emacs-29 emacs-29.4
