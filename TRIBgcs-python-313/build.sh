#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# dependencies include the [protobuf] extra, currently pinning protobuf
# to protobuf<7.0.0,>=3.20.2
#
${THOME}/build/pkg_pep518 -N TRIBgcs-python-313 google_cloud_storage-3.13.0
