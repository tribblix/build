#!/bin/sh
#
# this is a multistage build
#
${THOME}/build/dobuild libtranscript-0.3.3
env TRIBBLIX_CFLAGS=-D_POSIX_PTHREAD_SEMANTICS ${THOME}/build/dobuild libt3config-1.0.0
# pkg
env TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" TRIBBLIX_CFLAGS=-I/usr/gnu/include ${THOME}/build/dobuild libt3window-0.4.1
env TRIBBLIX_LDFLAGS="-L/usr/gnu/lib -R/usr/gnu/lib" TRIBBLIX_CFLAGS=-I/usr/gnu/include ${THOME}/build/dobuild libt3key-0.2.10
sed -i 's:do install :do ginstall :' libt3key-0.2.10/Makefile
${THOME}/build/dobuild libt3highlight-0.5.0
# pkg
${THOME}/build/dobuild libt3widget-1.2.2
# pkg
env TRIBBLIX_CXXFLAGS=-D_SYS_MACHTYPES_H ${THOME}/build/dobuild tilde-1.1.3
${THOME}/build/genpkg TRIBtilde libtranscript-0.3.3 libt3config-1.0.0 libt3window-0.4.1 libt3key-0.2.10 libt3highlight-0.5.0 libt3widget-1.2.2 tilde-1.1.3
