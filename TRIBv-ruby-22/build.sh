#!/bin/sh
#
# ruby update (still segfaults on sparc)
# just can't handle LD_OPTIONS
#
${THOME}/build/dobuild ruby-2.2.6 -P /usr/versions/ruby-2.2 -C ac_cv_func_dl_iterate_phdr=no -L
${THOME}/build/genpkg TRIBv-ruby-22 ruby-2.2.6
