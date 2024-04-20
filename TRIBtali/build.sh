#!/bin/sh
#
$THOME/build/mesonbuild +gnu -64only tali-3.38.3
${THOME}/build/genpkg TRIBtali tali-3.38.3
