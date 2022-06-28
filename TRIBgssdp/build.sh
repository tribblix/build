#!/bin/sh
#
${THOME}/build/dobuild -64 gssdp-1.0.5 -C "--disable-introspection --disable-dependency-tracking --without-gtk"
${THOME}/build/genpkg TRIBgssdp gssdp-1.0.5
