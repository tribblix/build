#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
git clone https://github.com/open-telemetry/opentelemetry-collector
cd opentelemetry-collector

env PATH=/usr/versions/go-1.22/bin:$PATH gmake otelcorecol

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/otel/bin
cp bin/otelcorecol_illumos_amd64 /tmp/ee/opt/tribblix/otel/bin/otelcorecol
cp README.md /tmp/ee/opt/tribblix/otel
${THOME}/build/create_pkg TRIBblix-otel-collector /tmp/ee
rm -fr /tmp/ee
cd ..
