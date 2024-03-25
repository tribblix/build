#!/bin/sh
#
env LIBS=-lcurses ${THOME}/build/dobuild -64only emacs-29.3 -P /usr/versions/emacs-29 -C "--with-xft --with-xpm --without-sqlite3"
${THOME}/build/genpkg TRIBv-emacs-29 emacs-29.3
