#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# the files installed into /usr/share/mime/application should be group
# root, as enforced by ../fixproto, otherwise the mime-cache service
# will change the group
#
# sparc downrev as current build requires later gcc features
#
${THOME}/build/mesonbuild -gnu -64only shared-mime-info-2.4 -C -Dupdate-mimedb=true
${THOME}/build/genpkg TRIBshared-mime-info shared-mime-info-2.4
