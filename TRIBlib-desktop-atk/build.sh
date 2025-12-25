#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/mesonbuild -64 -gnu atk-2.38.0 -C "-Dintrospection=false"
${THOME}/build/genpkg TRIBlib-desktop-atk atk-2.38.0
