#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libXdmcp-1.1.5
${THOME}/build/genpkg TRIBx11-libxdmcp libXdmcp-1.1.5
