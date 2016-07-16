#!/bin/sh
#
# this is my own patched vte, that handles home/end/pgup/pgdown sanely
#
${THOME}/build/dobuild -gnu vte-0.20.5
${THOME}/build/genpkg TRIBvte-pct vte-0.20.5
