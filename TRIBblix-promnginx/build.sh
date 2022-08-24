#!/bin/tcsh
#

$THOME/build/unpack nginx-prometheus-exporter-0.10.0
cd nginx-prometheus-exporter-0.10.0
gmake

${THOME}/build/genpkg TRIBblix-promnginx
cd ..
