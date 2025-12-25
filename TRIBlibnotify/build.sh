#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you have to build gtk3 applications against a new
# version of this library, otherwise they will pull in
# gtk2 as a transitive dependency and bad things will
# happen (eg caja)
#
# if you need the old one to build gtk2 applications, you need to
# install package version 0.5.2.0 explicitly
#
${THOME}/build/mesonbuild -64only libnotify-0.7.12 -C "-Dintrospection=disabled -Dman=false -Dgtk_doc=false"
${THOME}/build/genpkg TRIBlibnotify libnotify-0.7.12
