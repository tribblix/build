#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only audiofile-0.3.6
${THOME}/build/genpkg TRIBlibaudiofile audiofile-0.3.6
