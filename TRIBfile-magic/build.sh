#!/bin/sh
#
# if the version gets updated, rebuild TRIBmog to match
#
${THOME}/build/dobuild -64 file-5.39
${THOME}/build/genpkg TRIBfile-magic file-5.39
