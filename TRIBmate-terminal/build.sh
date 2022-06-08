#!/bin/sh
#
# 
#
env PATH=/usr/gnu/bin:$PATH $THOME/build/dobuild -64only mate-terminal-1.24.1
${THOME}/build/genpkg TRIBmate-terminal mate-terminal-1.24.1
