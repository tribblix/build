#!/bin/sh
#
${THOME}/build/dobuild -64only farstream-0.2.9 -C "--disable-introspection --disable-dependency-tracking"
${THOME}/build/genpkg TRIBfarstream farstream-0.2.9
