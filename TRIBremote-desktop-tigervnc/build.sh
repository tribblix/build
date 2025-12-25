#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# our own tigervnc
#
# we turn off H264 to avoid pulling ffmpeg
#
env TRIBBLIX_LDFLAGS=-lsocket ${THOME}/build/cmbuild -64only -gnu tigervnc-1.13.1 -C -DENABLE_H264=OFF
${THOME}/build/genpkg TRIBremote-desktop-tigervnc tigervnc-1.13.1
