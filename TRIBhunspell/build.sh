#!/bin/sh
#
env TRIBBLIX_CXXFLAGS=-fpermissive ${THOME}/build/dobuild -64 hunspell-1.3.4 -C "--disable-static"
${THOME}/build/genpkg TRIBhunspell hunspell-1.3.4
