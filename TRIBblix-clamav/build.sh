#!/bin/sh
#
# clamav
#
# ensure that libtool isn't installed
#  zap uninstall libtool
#
# libjson enables clamsubmit which is optional and we've not shipped
# in the past
#
${THOME}/build/dobuild -64only clamav-0.103.9 -P /opt/tribblix/clamav -C --without-libjson
${THOME}/build/genpkg TRIBblix-clamav clamav-0.103.9
