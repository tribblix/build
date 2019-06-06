#!/bin/sh
#
# Rebuild harfbuzz, with icu, and 64-bit (which it used to have anyway)
zap install TRIBlibicu
${THOME}/build/dobuild -64 harfbuzz-1.9.0
${THOME}/build/genpkg TRIBharfbuzz harfbuzz-1.9.0
