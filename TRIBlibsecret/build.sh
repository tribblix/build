#!/bin/sh
#
env AR=/usr/bin/ar ${THOME}/build/mesonbuild -64 -gnu libsecret-0.20.5 -C "-Dintrospection=false -Dgtk_doc=false"
${THOME}/build/genpkg TRIBlibsecret libsecret-0.20.5
