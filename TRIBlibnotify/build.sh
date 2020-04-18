#!/bin/sh
#
# you have to build gtk3 applications against a new
# version of this library, otherwise they will pull in
# gtk2 as a transitive dependency and bad things will
# happen (eg caja)
#
# so we build and ship both versions, the header and the default
# compilation symlink will be the gtk3 version, but the old
# library for backwards compatibility
#
# once all the old applications have been rebuilt, we can drop the
# 0.5.2 compatibility layer
#
# if you need the old one to build gtk2 applications, you need to
# install package version 0.5.2.0 explicitly
#
# after 0.7.7 the build switched to meson
#
${THOME}/build/dobuild -64 libnotify-0.5.2
${THOME}/build/dobuild -64 libnotify-0.7.7 -C --disable-introspection
${THOME}/build/genpkg TRIBlibnotify libnotify-0.5.2 libnotify-0.7.7
