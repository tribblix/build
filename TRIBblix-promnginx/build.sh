#!/bin/sh
#

$THOME/build/unpack nginx-prometheus-exporter-1.1.0
cd nginx-prometheus-exporter-1.1.0
env PATH=/usr/gnu/bin:$PATH gmake nginx-prometheus-exporter

${THOME}/build/genpkg TRIBblix-promnginx
cd ..
