#!/bin/sh
#
${THOME}/build/dobuild gssdp-1.0.0 -C --disable-introspection
${THOME}/build/genpkg TRIBgssdp gssdp-1.0.0
