#!/bin/sh
#
${THOME}/build/dobuild -64only dash-0.5.11.5 -C --disable-dependency-tracking
${THOME}/build/genpkg TRIBshell-dash dash-0.5.11.5
