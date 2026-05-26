#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# some parts need prior parts installed, so need to build a partial
# package and install it before moving on
#
# when updating, build all the components at the old level, and then just
# increment the new components one at a time until done
#
# if you update the python version, you need to build the whole cycle
# from scratch, as xcb-proto is tied to a given python version, but a
# quick workaround is to build twice:
# 0. Extend fixit to correct the old and new python versions
# 1. Build everything except libxcb as below, but add -C "PYTHON=python3.X"
#    for the libxcb step to use the *old* python corresponding to the
#    currently installed version of xcb-proto
# 2. Install that package, then rebuild against the newly installed version
# 3. Just have the new python version in fixit
#
${THOME}/build/dobuild xcb-proto-1.16.0
${THOME}/build/dobuild libpthread-stubs-0.5
# [install]
${THOME}/build/dobuild -64 libxcb-1.16.1
# [install]
${THOME}/build/dobuild -64 xcb-util-0.4.1
# [install]
${THOME}/build/dobuild -64 xcb-util-wm-0.4.2
${THOME}/build/dobuild -64 xcb-util-image-0.4.1
${THOME}/build/dobuild -64 xcb-util-keysyms-0.4.1
${THOME}/build/dobuild -64 xcb-util-renderutil-0.3.10
# [install]
${THOME}/build/dobuild -64 xcb-util-cursor-0.1.5
${THOME}/build/dobuild -64 xcb-util-errors-1.0.1

${THOME}/build/genpkg TRIBlibxcb xcb-proto-1.16.0 libpthread-stubs-0.5 libxcb-1.16.1 xcb-util-0.4.1 xcb-util-wm-0.4.2 xcb-util-image-0.4.1 xcb-util-keysyms-0.4.1 xcb-util-renderutil-0.3.10 xcb-util-cursor-0.1.5 xcb-util-errors-1.0.1
