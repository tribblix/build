#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild +64 libexif-0.6.25
${THOME}/build/genpkg TRIBimage-libexif libexif-0.6.25
