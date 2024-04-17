#!/bin/sh
#
# 3.11 is 64-bit
#
# There's a preconf patch to disable epoll
# There's an xpg6 patch to fix socket
# There's a setup patch to enable ILLUMOS
#

#
# there are patches to make _socket and _ssl work
#
# I've rebuilt sqlite3 with the mapfile removed which should solve problem
# with sqlite3 failing due to missing symbols
#
# there's a curses patch to make curses work and avoid ncurses
#

${THOME}/build/dobuild +64only Python-3.11.9 -P /usr/versions/python-3.11 -L -C --enable-shared
#
# NB. TRIBv-python-311 must not be installed, or the make
# install step will get confused
#
# zap d TRIBv-python-311-tests TRIBv-python-311-tkinter TRIBv-python-311
#
# Horrid hack to work around deficiencies in setuptools
${THOME}/build/genpkg TRIBv-python-311 Python-3.11.9
