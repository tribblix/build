#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH AR=/usr/bin/ar ${THOME}/build/mesonbuild -64 gupnp-tools-0.8.15
${THOME}/build/genpkg TRIBgupnp-tools gupnp-tools-0.8.15
