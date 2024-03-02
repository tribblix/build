#!/bin/sh
#
${THOME}/build/dobuild -64only slang-pre2.3.4-11 -J 1 -C --without-onig
${THOME}/build/genpkg TRIBslang slang-pre2.3.4-11
