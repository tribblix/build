#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild +gnu -64only gupnp-tools-0.12.2
${THOME}/build/genpkg TRIBgupnp-tools gupnp-tools-0.12.2
