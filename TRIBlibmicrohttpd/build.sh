#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only libmicrohttpd-1.0.2
${THOME}/build/genpkg TRIBlibmicrohttpd libmicrohttpd-1.0.2
