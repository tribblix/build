#!/bin/sh
#
#
${THOME}/build/dobuild pdsh-2.33 -C "--with-ssh --without-torgue --without-slurm --with-rcmd-rank-list=ssh,rsh,exec"
${THOME}/build/genpkg TRIBpdsh pdsh-2.33
