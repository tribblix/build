#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild -64only -gnu libsecret-0.21.6 -C "-Dintrospection=false -Dgtk_doc=false"
${THOME}/build/genpkg TRIBlibsecret libsecret-0.21.6
