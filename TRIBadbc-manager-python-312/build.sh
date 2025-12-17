#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# required by the adbc postgresql and sqlite drivers
# dependencies added for the [dbapi] extension
#
# needs a patch. just like adbc itself
#
${THOME}/build/pkg_setup_py TRIBadbc-manager-python-312 adbc_driver_manager-1.9.0
