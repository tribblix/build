#!/bin/sh
#
# rygel [needs gupnp gupnp-av gupnp-dlna vala libmediaart tracker]
#
${THOME}/build/dobuild -gnu rygel-0.36.1 -C --disable-introspection
${THOME}/build/genpkg TRIBrygel rygel-0.36.1
