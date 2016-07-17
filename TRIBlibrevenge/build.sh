#!/bin/sh
#
${THOME}/build/dobuild librevenge-0.0.2 -C --disable-werror 
${THOME}/build/genpkg TRIBlibrevenge librevenge-0.0.2
