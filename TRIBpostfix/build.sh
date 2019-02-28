#!/bin/sh
#
#
# need to check perms in fixproto
#
env CCARGS='-DDEF_DAEMON_DIR=\"/usr/lib/postfix\" -DDEF_MANPAGE_DIR=\"/usr/share/man\" -DDEF_NEWALIAS_PATH=\"/usr/sbin/newaliases\" -DUSE_TLS -DHAS_DB -DHAS_SQLITE -DUSE_SASL_AUTH -DUSE_CYRUS_SASL -I/usr/include/sasl' \
AUXLIBS='-lsqlite3 -lssl -lcrypto -lsasl -ldb-5.3' \
${THOME}/build/dobuild postfix-3.3.3
rm -fr /tmp/pfix
cd postfix-3.3.3
gmake non-interactive-package install_root=/tmp/pfix
cd ..
${THOME}/build/create_pkg TRIBpostfix /tmp/pfix
rm -fr /tmp/pfix
