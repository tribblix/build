#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libssh2-1.11.1
${THOME}/build/genpkg TRIBlibssh2 libssh2-1.11.1
