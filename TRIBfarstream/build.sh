#!/bin/sh
#
${THOME}/build/dobuild -64 farstream-0.2.8 -C "--disable-python --disable-introspection"
${THOME}/build/genpkg TRIBfarstream farstream-0.2.8
