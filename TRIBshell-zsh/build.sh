#!/bin/sh
#
# need -L, which enables dynamic modules
#
${THOME}/build/dobuild -64 zsh-5.6.2 -L
${THOME}/build/genpkg TRIBshell-zsh zsh-5.6.2
