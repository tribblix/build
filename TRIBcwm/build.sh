#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# there's a patch to eliminate non-portable code and enable 64-bit
#
env CC=gcc ${THOME}/build/dobuild -64only https://github.com/leahneukirchen/cwm
env PREFIX=/usr ${THOME}/build/genpkg -gnu TRIBcwm cwm
