#!/bin/sh
#
# Erlang 18.3, 64-bit (the --enable-m64-build flag is broken)
#
${THOME}/build/dobuild -64 otp_src_18.3
# [tests:
# cd otp_src_18.3
# env ERL_TOP=`pwd` gmake release_tests
# env ERL_TOP=`pwd` sh 'cd release/tests/test_server; $ERL_TOP/bin/erl -s ts install -s ts smoke_test batch -s init stop'
# ls -l `pwd`/release/tests/test_server/index.html
# cd ..
# ]
${THOME}/build/genpkg TRIBerlang otp_src_18.3
# 
# leofs needs erlang 17, which is built like this:
# ${THOME}/build/dobuild -64 otp_src_17.5
# ${THOME}/build/genpkg TRIBerlang otp_src_17.5
