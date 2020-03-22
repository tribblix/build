#!/bin/sh
#
# [need to uprev in stages, needed an interim build with libxcb-1.10]
# xcb requires xsltproc
#
#
# for sparc, need to remove any odd bits of xcb that happen to come from
# the opensxce SUNWxwplt package
#
# /usr/sbin/removef SUNWxwplt /usr/lib/libxcb.so /usr/lib/libxcb.so.1 /usr/lib/sparcv9/libxcb.so /usr/lib/sparcv9/libxcb.so.1
# /bin/rm -f /usr/lib/libxcb.so /usr/lib/libxcb.so.1 /usr/lib/sparcv9/libxcb.so /usr/lib/sparcv9/libxcb.so.1
# /usr/sbin/removef -f SUNWxwplt
#
# also, some parts need prior parts installed, so need to build a partial
# package and install it before moving on
#
# when updating, build all the components at the old level, and then just
# increment the new components one at a time until done
#
${THOME}/build/dobuild xcb-proto-1.14
${THOME}/build/dobuild libpthread-stubs-0.4
# [install]
# we had xevie and xprint before, so enable them in this version too
${THOME}/build/dobuild -64 libxcb-1.14 -C "--enable-xprint --enable-xevie"
# [install]
${THOME}/build/dobuild -64 xcb-util-0.4.0
# [install]
${THOME}/build/dobuild -64 xcb-util-wm-0.4.1
${THOME}/build/dobuild -64 xcb-util-image-0.4.0
${THOME}/build/dobuild -64 xcb-util-keysyms-0.4.0
${THOME}/build/dobuild -64 xcb-util-renderutil-0.3.9
# [install]
${THOME}/build/dobuild -64 xcb-util-cursor-0.1.3
${THOME}/build/dobuild -64 xcb-util-errors-1.0

${THOME}/build/genpkg TRIBlibxcb xcb-proto-1.14 libpthread-stubs-0.4 libxcb-1.14 xcb-util-0.4.0 xcb-util-wm-0.4.1 xcb-util-image-0.4.0 xcb-util-keysyms-0.4.0 xcb-util-renderutil-0.3.9 xcb-util-cursor-0.1.3 xcb-util-errors-1.0
