#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
${THOME}/build/dobuild -64only pdsh-2.35 -C "--with-ssh --without-torgue --without-slurm --with-rcmd-rank-list=ssh,rsh,exec"
${THOME}/build/genpkg TRIBpdsh pdsh-2.35
