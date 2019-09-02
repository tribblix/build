#!/bin/sh
#
# just can't handle LD_OPTIONS
#
${THOME}/build/dobuild ruby-2.5.6 -P /usr/versions/ruby-2.5 -C ac_cv_func_dl_iterate_phdr=no -L
${THOME}/build/genpkg TRIBv-ruby-25 ruby-2.5.6
