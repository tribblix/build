#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

$THOME/build/unpack nginx-prometheus-exporter-1.4.1
cd nginx-prometheus-exporter-1.4.1
env PATH=/usr/gnu/bin:$PATH gmake nginx-prometheus-exporter

${THOME}/build/genpkg TRIBblix-promnginx
cd ..
