#!/bin/sh
#
${THOME}/build/dobuild -64only gftp-2.9.1b
# PATH to fix broken use of install
env PATH=/usr/gnu/bin:$PATH ${THOME}/build/genpkg TRIBgftp gftp-2.9.1b
