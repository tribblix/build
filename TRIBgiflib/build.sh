#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# later versions appear to not be binary compatible (although
# they should be)
#
${THOME}/build/dobuild -64 giflib-5.1.4
${THOME}/build/genpkg TRIBgiflib giflib-5.1.4
