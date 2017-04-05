#!/bin/sh
#
${THOME}/build/dobuild -64 gssdp-1.0.2 -C --disable-introspection
${THOME}/build/genpkg TRIBgssdp gssdp-1.0.2
