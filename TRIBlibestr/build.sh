#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libestr-0.1.11
${THOME}/build/genpkg TRIBlibestr libestr-0.1.11
