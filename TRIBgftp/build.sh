#!/bin/sh
#
${THOME}/build/dobuild -64only gftp-2.9.1b
# -gnu to fix broken use of install
${THOME}/build/genpkg -gnu TRIBgftp gftp-2.9.1b
