#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gupnp-dlna-0.10.5 -C --disable-introspection
${THOME}/build/genpkg TRIBgupnp-dlna gupnp-dlna-0.10.5
