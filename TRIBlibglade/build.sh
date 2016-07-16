#!/bin/tcsh
#
${THOME}/build/unpack libglade-2.6.4
cd libglade-2.6.4
gsed -i '/DG_DISABLE_DEPRECATED/d' glade/Makefile.in
env PATH=/usr/gnu/bin:$PATH CFLAGS=-O ./configure --prefix=/usr --disable-static
# [ barfs - The problem is -D_POSIX_PTHREAD_SEMANTICS]
foreach file ( `find . -name Makefile` )
gsed -i 's/-D_POSIX_PTHREAD_SEMANTICS//' $file
end
gmake -j 4
cd ..
${THOME}/build/genpkg TRIBlibglade libglade-2.6.4
