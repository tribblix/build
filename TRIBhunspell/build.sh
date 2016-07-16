#!/bin/sh
#
${THOME}/build/dobuild hunspell-1.3.2 -C "--disable-static"
${THOME}/build/genpkg TRIBhunspell hunspell-1.3.2
