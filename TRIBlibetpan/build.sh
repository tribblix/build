#!/bin/sh
#
# the postconf script replaces configure
#
# this library seems to bump its SONAME every time
# so consumers will need to be rebuilt
#
# zap install TRIBlibtool
${THOME}/build/dobuild libetpan-1.9.4
${THOME}/build/genpkg TRIBlibetpan libetpan-1.9.4
#zap uninstall TRIBlibtool
