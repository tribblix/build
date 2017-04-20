#!/bin/sh
#
#
#
${THOME}/build/unpack mysql-5.6.36
cd mysql-5.6.36
cmake . -DCMAKE_BUILD_TYPE=Release -DBUILD_CONFIG=mysql_release -DFEATURE_SET=community -DWITH_EMBEDDED_SERVER=OFF -DENABLE_DTRACE=OFF -DCMAKE_INSTALL_PREFIX=/opt/tribblix/mysql -DFORCE_UNSUPPORTED_COMPILER=true
gmake -j 4
${THOME}/build/genpkg TRIBblix-mysql-56
