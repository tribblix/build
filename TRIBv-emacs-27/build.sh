#!/bin/sh
#
env LIBS=-lcurses ${THOME}/build/dobuild emacs-27.1 -P /usr/versions/emacs-27 -C --with-gif=no
${THOME}/build/genpkg TRIBv-emacs-27 emacs-27.1
