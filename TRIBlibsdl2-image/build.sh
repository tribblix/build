#!/bin/sh
#
# the image libraries for png jpeg tiff webp are dlopen'ed
# so won't show up automatically as dependencies
#
${THOME}/build/dobuild -64 SDL_image-release-2.0.5
${THOME}/build/genpkg TRIBlibsdl2-image SDL_image-release-2.0.5
