#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# needs gstreamer-libav for audio and gstreamer-plugins-bad for video
# that aren't autodetected
#
${THOME}/build/cmbuild -64only UxPlay-1.68.3
${THOME}/build/genpkg TRIBuxplay UxPlay-1.68.3
