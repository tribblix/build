#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies include the [protobuf] extra, currently pinning protobuf
# to protobuf<8.0.0,>=6.33.5
#
${THOME}/build/pkg_pep518 -N TRIBgcs-python-313 google_cloud_storage-3.13.1
