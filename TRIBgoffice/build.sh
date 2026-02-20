#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to ensure finite is defined
#
${THOME}/build/dobuild +64 -gnu goffice-0.10.60
${THOME}/build/genpkg TRIBgoffice goffice-0.10.60
