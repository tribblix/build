#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needed for evince, mate etc
#
${THOME}/build/mesonbuild -gnu gsettings-desktop-schemas-3.38.0 -C -Dintrospection=false
${THOME}/build/genpkg TRIBgsettings-desktop-schemas gsettings-desktop-schemas-3.38.0
