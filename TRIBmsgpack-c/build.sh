#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/cmbuild -64 msgpack-3.1.1
${THOME}/build/genpkg TRIBmsgpack-c msgpack-3.1.1
