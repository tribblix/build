#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -gnu -64only glib-networking-2.44.0 -C "--without-ca-certificates"
${THOME}/build/genpkg TRIBglib-networking glib-networking-2.44.0
