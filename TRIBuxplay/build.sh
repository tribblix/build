#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs gstreamer-libav for audio and gstreamer-plugins-bad for video
# that aren't autodetected
#
# to connect from an iPad, start uxplay, then pull down from the top
# right of the iPad screen to open the control center, and press on the
# sharing button (looks like 2 overlapping screens)
#
${THOME}/build/cmbuild -64only UxPlay-1.73
${THOME}/build/genpkg TRIBuxplay UxPlay-1.73
