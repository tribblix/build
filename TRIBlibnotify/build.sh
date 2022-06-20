#!/bin/sh
#
# you have to build gtk3 applications against a new
# version of this library, otherwise they will pull in
# gtk2 as a transitive dependency and bad things will
# happen (eg caja)
#
# if you need the old one to build gtk2 applications, you need to
# install package version 0.5.2.0 explicitly
#
# after 0.7.7 the build switched to meson
#
${THOME}/build/dobuild -64 libnotify-0.7.7 -C --disable-introspection
${THOME}/build/genpkg TRIBlibnotify libnotify-0.7.7
