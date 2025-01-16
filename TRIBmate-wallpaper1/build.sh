#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# images downloaded by the fixit script
#
mkdir -p /tmp/ss
${THOME}/build/create_pkg TRIBmate-wallpaper1 /tmp/ss
rm -fr /tmp/ss
