#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64 SDL_mixer-1.2.12
${THOME}/build/genpkg TRIBlibsdl-mixer SDL_mixer-1.2.12
