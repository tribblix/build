#!/bin/sh
#
# just can't handle LD_OPTIONS
# disable -fstack-protector otherwise miniruby fails to link with
# multiply defined symbols
#
${THOME}/build/dobuild +64only ruby-3.2.3 -P /usr/versions/ruby-3 -C "ac_cv_func_dl_iterate_phdr=no stack_protector=no" -L
${THOME}/build/genpkg TRIBv-ruby-3 ruby-3.2.3
