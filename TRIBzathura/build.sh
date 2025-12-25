#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# you must uninstall the old copy of zathura first, because otherwise
# the build won't pull girara as a subproject
#
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" $THOME/build/mesonbuild +gnu -64only zathura-0.5.2

#
# first build you will need to package and install it to be able to build
# the plugins
#
${THOME}/build/genpkg TRIBzathura zathura-0.5.2

#
# now the plugins
#
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" $THOME/build/mesonbuild +gnu -64only zathura-pdf-poppler-0.3.1
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" $THOME/build/mesonbuild +gnu -64only zathura-ps-0.2.7
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" $THOME/build/mesonbuild +gnu -64only zathura-cb-0.1.10
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" $THOME/build/mesonbuild +gnu -64only zathura-djvu-0.2.9

${THOME}/build/genpkg TRIBzathura zathura-0.5.2 zathura-pdf-poppler-0.3.1 zathura-ps-0.2.7 zathura-cb-0.1.10 zathura-djvu-0.2.9
