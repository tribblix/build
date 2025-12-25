#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64 libusb-1.0.27
${THOME}/build/genpkg TRIBlibusb libusb-1.0.27
