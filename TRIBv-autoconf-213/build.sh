#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# The firefox build wants this version
# No, I don't understand either
#
${THOME}/build/dobuild -gnu autoconf-2.13 -P /usr/versions/autoconf-2.13
${THOME}/build/genpkg TRIBv-autoconf-213 autoconf-2.13
