#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64only gupnp-dlna-0.12.0
${THOME}/build/genpkg TRIBgupnp-dlna gupnp-dlna-0.12.0
