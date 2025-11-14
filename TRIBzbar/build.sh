#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -A -64only zbar-0.23.93 -C "--disable-video --disable-dependency-tracking --without-gir --without-qt --disable-introspection --without-dbus"
${THOME}/build/genpkg TRIBzbar zbar-0.23.93
