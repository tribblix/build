#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gupnp-av-0.12.11 -C "--disable-introspection --disable-dependency-tracking"
${THOME}/build/genpkg TRIBgupnp-av gupnp-av-0.12.11
