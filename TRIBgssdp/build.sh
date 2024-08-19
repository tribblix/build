#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only gssdp-1.0.5 -C "--disable-introspection --disable-dependency-tracking --without-gtk"
${THOME}/build/genpkg TRIBgssdp gssdp-1.0.5
