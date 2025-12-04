#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only nsd-4.14.0 -C --disable-dnstap
${THOME}/build/genpkg TRIBnsd nsd-4.14.0
