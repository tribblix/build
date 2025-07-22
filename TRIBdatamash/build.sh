#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only datamash-1.9
${THOME}/build/genpkg TRIBdatamash datamash-1.9
