#!/bin/sh
#
${THOME}/build/dobuild hunspell-1.3.4 -C "--disable-static CXXFLAGS=-fpermissive"
${THOME}/build/genpkg TRIBhunspell hunspell-1.3.4
