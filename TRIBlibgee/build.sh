#!/bin/sh
#
${THOME}/build/dobuild -64only libgee-0.20.6 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBlibgee libgee-0.20.6
