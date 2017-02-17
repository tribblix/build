#!/bin/sh
#
env LIBS=-lcurses ${THOME}/build/dobuild emacs-25.1 -P /usr/versions/emacs-25 -C --with-gif=no
${THOME}/build/genpkg TRIBv-emacs-25 emacs-25.1
