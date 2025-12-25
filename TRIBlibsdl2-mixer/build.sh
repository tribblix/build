#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# flac, modplug, mpg123, ogg(vorbis) are dlopen'ed so don't show up in the
# automatic dependency check
#
${THOME}/build/dobuild -64only SDL_mixer-release-2.0.4
${THOME}/build/genpkg TRIBlibsdl2-mixer SDL_mixer-release-2.0.4
