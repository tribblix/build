#!/bin/sh
#
# source and patch from https://launchpad.net/ubuntu/+source/xless/1.7-14.4
# modified the patch to change a few locations, but kept the code changes
# the same as debian
#
${THOME}/build/dobuild xless-1.7
${THOME}/build/genpkg TRIBx11-xless xless-1.7
