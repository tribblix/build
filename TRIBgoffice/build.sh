#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64 -gnu goffice-0.10.59
${THOME}/build/genpkg TRIBgoffice goffice-0.10.59
