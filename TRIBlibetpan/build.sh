#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the postconf script replaces the configure step
# arguments to configure need to go in the postconf script
#
# this library seems to bump its SONAME every time
# so consumers will need to be rebuilt
#
# zap install TRIBlibtool
${THOME}/build/dobuild +64 libetpan-1.9.4
${THOME}/build/genpkg TRIBlibetpan libetpan-1.9.4
#zap uninstall TRIBlibtool
