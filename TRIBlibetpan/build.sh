#!/bin/sh
#
# the postconf script replaces configure
#
# this library seems to bump its SONAME every time
# so consumers will need to be rebuilt
#
# zap install TRIBlibtool
${THOME}/build/dobuild libetpan-1.8
${THOME}/build/genpkg TRIBlibetpan libetpan-1.8
#zap uninstall TRIBlibtool
