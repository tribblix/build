#!/bin/sh
#
# the postconf script replaces the configure step
# arguments to configure need to go in the postconf script
# (and in the 64-bit postconf too)
#
# this library seems to bump its SONAME every time
# so consumers will need to be rebuilt
#
# zap install TRIBlibtool
${THOME}/build/dobuild -64 libetpan-1.9.4
${THOME}/build/genpkg TRIBlibetpan libetpan-1.9.4
#zap uninstall TRIBlibtool
