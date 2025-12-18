#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only socat-1.8.1.0
${THOME}/build/genpkg TRIBsocat socat-1.8.1.0
