#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only procmail-3.24 -M LOCKINGTEST=110
#
# see also the fixit script which relocates the install into the right place
#
${THOME}/build/genpkg -I BASENAME TRIBprocmail procmail-3.24
