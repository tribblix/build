#!/bin/sh
#
# 
#
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64only zathura-0.4.9

#
# first build you will need to package and install it to be able to build
# the plugins
#
${THOME}/build/genpkg TRIBzathura zathura-0.4.9

#
# now the plugins
#
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64only zathura-pdf-poppler-0.3.0
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64only zathura-ps-0.2.7
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64only zathura-cb-0.1.10
env TRIBBLIX_CFLAGS="-D__EXTENSIONS__ -D_LARGEFILE_SOURCE=64" PATH=/usr/gnu/bin:$PATH $THOME/build/mesonbuild -64only zathura-djvu-0.2.9

${THOME}/build/genpkg TRIBzathura zathura-0.4.9 zathura-pdf-poppler-0.3.0 zathura-ps-0.2.7 zathura-cb-0.1.10 zathura-djvu-0.2.9
