#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs TRIBlibgphoto2
#
${THOME}/build/dobuild -64only gphoto2-2.5.28
${THOME}/build/genpkg TRIBgphoto2 gphoto2-2.5.28
