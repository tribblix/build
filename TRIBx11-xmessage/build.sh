#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only xmessage-1.0.7
${THOME}/build/genpkg TRIBx11-xmessage xmessage-1.0.7
