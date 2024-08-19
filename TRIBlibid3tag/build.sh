#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you may need to repack the tarball as it's shipped without the version
#
${THOME}/build/cmbuild -64only libid3tag-0.16.3
${THOME}/build/genpkg TRIBlibid3tag libid3tag-0.16.3
