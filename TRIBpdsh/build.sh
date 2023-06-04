#!/bin/sh
#
#
${THOME}/build/dobuild -64only pdsh-2.34 -C "--with-ssh --without-torgue --without-slurm --with-rcmd-rank-list=ssh,rsh,exec"
${THOME}/build/genpkg TRIBpdsh pdsh-2.34
