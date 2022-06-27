#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64only tali-3.38.3
${THOME}/build/genpkg TRIBtali tali-3.38.3
