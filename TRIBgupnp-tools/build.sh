#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a postconf file to make gupnp-network-light work
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild +gnu -64only gupnp-tools-0.8.15
${THOME}/build/genpkg TRIBgupnp-tools gupnp-tools-0.8.15
