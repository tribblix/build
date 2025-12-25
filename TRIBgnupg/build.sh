#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# legacy build, now needs a patch to handle -fno-common being the
# default as of gcc10
#
${THOME}/build/dobuild -64only gnupg-1.4.23 -C --build=x86_64-pc-solaris2.11
${THOME}/build/genpkg TRIBgnupg gnupg-1.4.23
