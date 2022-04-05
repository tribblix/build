#!/bin/sh
#
# later versions introduce dependencies we don't have
#
${THOME}/build/dobuild -64only rxvt-unicode-9.22
${THOME}/build/genpkg TRIBterminal-urxvt rxvt-unicode-9.22
