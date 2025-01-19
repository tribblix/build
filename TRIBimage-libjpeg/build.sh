#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# actually libjpeg-turbo
# no need for the ijg v9 compatibility
#
${THOME}/build/cmbuild -64 libjpeg-turbo-3.0.4
${THOME}/build/genpkg TRIBimage-libjpeg libjpeg-turbo-3.0.4
