#!/bin/sh
#
env PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64 json-glib-1.6.6 -C "-Dintrospection=disabled --buildtype=release"
${THOME}/build/genpkg TRIBjson-glib json-glib-1.6.6
