#!/bin/sh
#
# mcrypt (for php)
#
# needs libmcrypt and libmhash
#
env CPPFLAGS="-I/opt/tribblix/mcrypt/include" LDFLAGS="-L/opt/tribblix/mcrypt/lib -R/opt/tribblix/mcrypt/lib" ${THOME}/build/dobuild mcrypt-2.6.8 -P /opt/tribblix/mcrypt -C --with-libmcrypt-prefix=/opt/tribblix/mcrypt
${THOME}/build/genpkg TRIBblix-mcrypt mcrypt-2.6.8
