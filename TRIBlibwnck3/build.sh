#!/bin/sh
#
${THOME}/build/dobuild -64 -gnu libwnck-3.18.0 -C "--disable-introspection --program-suffix=3"
${THOME}/build/genpkg TRIBlibwnck3 libwnck-3.18.0
