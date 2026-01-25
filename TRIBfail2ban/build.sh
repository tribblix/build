#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's both a fixit and fixinstall file to put everything in the right
# place as it's not just a python application
#
${THOME}/build/pkg_pep518 -N -v 312 TRIBfail2ban fail2ban-1.1.0
