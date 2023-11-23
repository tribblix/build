#!/bin/sh
#
${THOME}/build/dobuild -64only slang-2.3.3 -J 1 -C --without-onig
${THOME}/build/genpkg TRIBslang slang-2.3.3
