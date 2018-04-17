#!/bin/sh
#
# need -L, which enables dynamic modules for the 32-bit build
# but they still don't build in 64-bit
#
${THOME}/build/dobuild -64 zsh-5.5.1 -L
${THOME}/build/genpkg TRIBshell-zsh zsh-5.5.1
