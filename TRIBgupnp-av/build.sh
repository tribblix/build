#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only gupnp-av-0.14.5
${THOME}/build/genpkg TRIBgupnp-av gupnp-av-0.14.5
