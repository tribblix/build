#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# depends on libgcrypt, but via dlopen rather than being linked in
#
${THOME}/build/dobuild -64only mbuffer-20251025 -C --sysconfdir=/etc
${THOME}/build/genpkg TRIBmbuffer mbuffer-20251025
