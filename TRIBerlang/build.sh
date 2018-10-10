#!/bin/sh
#
# current RabbitMQ and LeoFS both want something in the 19-21 range
# go for 20 as 21 is still a little new
#
# Erlang 18.3, use our 64-bit (the --enable-m64-build flag is broken)
# Erlang 20.3 you need both our flags and the erlang 64-bit flag
#
# needs gnu m4 and make being gmake
# but you can't change PATH as that pulls in the wrong ld
#
env M4=/usr/gnu/bin/m4 MAKE=gmake ${THOME}/build/dobuild otp_src_20.3
mv otp_src_20.3 otp_src_20.3-32bit
env M4=/usr/gnu/bin/m4 MAKE=gmake ${THOME}/build/dobuild +64 otp_src_20.3 -C --enable-m64-build
mv otp_src_20.3-32bit otp_src_20.3
#
# [tests:
# cd otp_src_20.3
# env ERL_TOP=`pwd` gmake release_tests
# env ERL_TOP=`pwd` sh 'cd release/tests/test_server; $ERL_TOP/bin/erl -s ts install -s ts smoke_test batch -s init stop'
# ls -l `pwd`/release/tests/test_server/index.html
# cd ..
# ]
#
env M4=/usr/gnu/bin/m4 MAKE=gmake ${THOME}/build/genpkg TRIBerlang otp_src_20.3
