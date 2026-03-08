#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the image libraries for png jpeg tiff webp are dlopen'ed
# so won't show up automatically as dependencies
#
# uses libpng14, not latest
#
${THOME}/build/dobuild +64 SDL_image-1.2.12
${THOME}/build/genpkg TRIBlibsdl-image SDL_image-1.2.12
