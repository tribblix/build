#!/bin/sh
#
${THOME}/build/dobuild -64 libgd-2.2.3 -C --enable-werror=no
${THOME}/build/genpkg TRIBlibgd libgd-2.2.3
