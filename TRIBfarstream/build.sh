#!/bin/sh
#
${THOME}/build/dobuild -64 farstream-0.2.9 -C "--disable-python --disable-introspection --disable-dependency-tracking"
${THOME}/build/genpkg TRIBfarstream farstream-0.2.9
