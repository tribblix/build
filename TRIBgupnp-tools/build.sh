#!/bin/sh
#
# there's a postconf file to make gupnp-network-light work
#
env PATH=/usr/gnu/bin:$PATH AR=/usr/bin/ar ${THOME}/build/mesonbuild -64only gupnp-tools-0.8.15
${THOME}/build/genpkg TRIBgupnp-tools gupnp-tools-0.8.15
