#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# this used to overlap with TRIBsmpeg, but that is no more
#
env LIBS="-lsocket -lnsl" ${THOME}/build/dobuild -64only smpeg-main
${THOME}/build/genpkg TRIBsmpeg2 smpeg-main
