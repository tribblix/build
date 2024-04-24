#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libupnp-1.14.19
${THOME}/build/genpkg TRIBlibupnp libupnp-1.14.19
