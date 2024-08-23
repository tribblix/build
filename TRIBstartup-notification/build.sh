#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only startup-notification-0.10
${THOME}/build/genpkg TRIBstartup-notification startup-notification-0.10
