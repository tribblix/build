#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# must build without gtk3
#
env LIBS=-luuid ${THOME}/build/dobuild -gnu -64only tracker-1.13.0 -C "--disable-introspection --disable-hal --disable-static"
${THOME}/build/genpkg TRIBtracker tracker-1.13.0
