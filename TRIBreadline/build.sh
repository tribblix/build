#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# try parking in /usr/gnu to partially hide it
#
# notes that we need to explicitly link against curses
# that's what it actually does implicitly anyway, but if we don't
# explicitly then it doesn't pull in the shared library, relying on
# the consumer accidentally doing so
#
env TRIBBLIX_LDFLAGS=-lcurses ${THOME}/build/dobuild -64 readline-6.3 -P /usr/gnu -C --with-curses
${THOME}/build/genpkg TRIBreadline readline-6.3
