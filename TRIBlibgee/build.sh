#!/bin/sh
#
${THOME}/build/dobuild -64 libgee-0.20.5 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBlibgee libgee-0.20.5
