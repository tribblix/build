#!/bin/sh
#
env LIBS=-lcurses ${THOME}/build/dobuild emacs-24.5 -P /usr/versions/emacs-24.5 -C --with-gif=no
${THOME}/build/genpkg TRIBv-emacs-24 emacs-24.5
