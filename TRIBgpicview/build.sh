#!/bin/sh
#
${THOME}/build/dobuild -gnu -64only gpicview-0.2.5 -C --enable-gtk3
${THOME}/build/genpkg TRIBgpicview gpicview-0.2.5
