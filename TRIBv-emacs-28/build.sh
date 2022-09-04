#!/bin/sh
#
env LIBS=-lcurses ${THOME}/build/dobuild -64only emacs-28.1 -P /usr/versions/emacs-28 -C "--with-xft --with-xpm"
${THOME}/build/genpkg TRIBv-emacs-28 emacs-28.1
