#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# rygel [needs gupnp gupnp-av gupnp-dlna vala libmediaart tracker]
#
${THOME}/build/dobuild -gnu -64only rygel-0.36.2 -C "--disable-introspection --without-ui"
${THOME}/build/genpkg TRIBrygel rygel-0.36.2
