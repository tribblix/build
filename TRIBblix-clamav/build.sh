#!/bin/sh
#
# clamav
#
# ensure that libtool isn't installed
#  zap uninstall libtool
#
${THOME}/build/dobuild clamav-0.101.4 -P /opt/tribblix/clamav
${THOME}/build/genpkg TRIBblix-clamav clamav-0.101.4
