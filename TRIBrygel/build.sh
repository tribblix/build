#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# rygel, built using vala
# needs gupnp gupnp-av gupnp-dlna libmediaart gst-editing-services
# and it needs vapi and gir data for all of those
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild -gnu -64only rygel-0.44.2 -C "-Dgtk=disabled -Dtests=false"
${THOME}/build/genpkg TRIBrygel rygel-0.44.2
