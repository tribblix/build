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
# and
#
# /usr/sbin/removef SUNWxwinc /usr/lib/pkgconfig/pthread-stubs.pc
# /usr/sbin/removef -f SUNWxwinc
#
# also, some parts need prior parts installed, so need to build a partial
# package and install it before moving on
#
# when updating, build all the components at the old level, and then just
# increment the new components one at a time until done
#
# if you update the python version, you need to build the whole cycle
# from scratch, as xcb-proto is tied to a given python version
#
${THOME}/build/dobuild xcb-proto-1.15.2
${THOME}/build/dobuild libpthread-stubs-0.4
# [install]
# we had xevie and xprint before, but no consumers
# if switching python, can add -C "PYTHON=python3.9" to select
${THOME}/build/dobuild -64 libxcb-1.15
# [install]
${THOME}/build/dobuild -64 xcb-util-0.4.1
# [install]
${THOME}/build/dobuild -64 xcb-util-wm-0.4.2
${THOME}/build/dobuild -64 xcb-util-image-0.4.1
${THOME}/build/dobuild -64 xcb-util-keysyms-0.4.1
${THOME}/build/dobuild -64 xcb-util-renderutil-0.3.10
# [install]
${THOME}/build/dobuild -64 xcb-util-cursor-0.1.4
${THOME}/build/dobuild -64 xcb-util-errors-1.0.1

${THOME}/build/genpkg TRIBlibxcb xcb-proto-1.15.2 libpthread-stubs-0.4 libxcb-1.15 xcb-util-0.4.1 xcb-util-wm-0.4.2 xcb-util-image-0.4.1 xcb-util-keysyms-0.4.1 xcb-util-renderutil-0.3.10 xcb-util-cursor-0.1.4 xcb-util-errors-1.0.1
