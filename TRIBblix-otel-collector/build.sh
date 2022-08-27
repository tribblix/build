#!/bin/sh
#
git clone https://github.com/open-telemetry/opentelemetry-collector
cd opentelemetry-collector
#
# edit pkg/errors/abort.go
# add golang.org/x/sys/unix to import
# Getpid and Getpgid are unix not syscall
#
gmake otelcorecol

rm -fr /tmp/ee
mkdir -p /tmp/ee/opt/tribblix/otel/bin
cp bin/otelcorecol_solaris_amd64 /tmp/ee/opt/tribblix/otel/bin/otelcorecol
cp README.md /tmp/ee/opt/tribblix/otel
${THOME}/build/create_pkg TRIBblix-otel-collector /tmp/ee
rm -fr /tmp/ee
cd ..
