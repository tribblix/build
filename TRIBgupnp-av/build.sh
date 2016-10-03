#!/bin/sh
#
${THOME}/build/dobuild gupnp-av-0.12.8 -C --disable-introspection
${THOME}/build/genpkg TRIBgupnp-av gupnp-av-0.12.8
