#!/bin/sh
#
${THOME}/build/dobuild -64 gupnp-av-0.12.10 -C --disable-introspection
${THOME}/build/genpkg TRIBgupnp-av gupnp-av-0.12.10
