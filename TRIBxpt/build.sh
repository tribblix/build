#!/bin/sh
#
env CC="gcc -m64" $THOME/build/dobuild -64only https://github.com/tvrusso/xpt
# install done by fixinstall
${THOME}/build/genpkg TRIBxpt xpt
