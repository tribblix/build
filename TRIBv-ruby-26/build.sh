#!/bin/sh
#
# just can't handle LD_OPTIONS
# disable -fstack-protector otherwise miniruby fails to link with
# multiply defined symbols
#
${THOME}/build/dobuild ruby-2.6.6 -P /usr/versions/ruby-2.6 -C "ac_cv_func_dl_iterate_phdr=no stack_protector=no" -L
${THOME}/build/genpkg TRIBv-ruby-26 ruby-2.6.6
