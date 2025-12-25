#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild xosview-1.24 -M "PLATFORM=sunos5 PREFIX=/usr CXXFLAGS=-m64 LDFLAGS=-m64"
${THOME}/build/genpkg -M "PLATFORM=sunos5 PREFIX=/usr" TRIBxosview xosview-1.24
