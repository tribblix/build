#!/bin/sh
#
# use the old version in 32-bit for binary compatibility
#
${THOME}/build/dobuild libwpg-0.3.0
${THOME}/build/dobuild +64 libwpg-0.3.4
${THOME}/build/genpkg TRIBlibwpg libwpg-0.3.0 libwpg-0.3.4
