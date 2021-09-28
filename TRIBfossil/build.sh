#!/bin/sh
#
# we've had a while with 2.0 so the sha1/sha3 switch is history
#
${THOME}/build/dobuild fossil-src-2.16 -C --enable-json
${THOME}/build/genpkg TRIBfossil fossil-src-2.16
