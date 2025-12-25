#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64 yaml-0.2.5 -C --disable-static
${THOME}/build/genpkg TRIBlibyaml yaml-0.2.5
