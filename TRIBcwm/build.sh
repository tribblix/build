#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to eliminate non-portable code
#
env CC=gcc ${THOME}/build/dobuild -64only https://github.com/leahneukirchen/cwm
env PATH=/usr/gnu/bin:$PATH PREFIX=/usr ${THOME}/build/genpkg TRIBcwm cwm
