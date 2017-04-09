#!/bin/sh
#
${THOME}/build/dobuild -64 json-glib-1.2.8 -C --disable-introspection
${THOME}/build/genpkg TRIBjson-glib json-glib-1.2.8
