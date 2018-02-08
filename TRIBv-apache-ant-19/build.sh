#!/bin/sh
#
rm -fr /tmp/aa
mkdir -p /tmp/aa/usr/versions
cd /tmp/aa/usr/versions
unzip /packages/localsrc/Ant/apache-ant-1.9.10-bin.zip
cp /packages/localsrc/Ant/jsch-0.1.54.jar apache-ant-1.9.10/lib/
cp /packages/localsrc/Ant/apache-ivy-2.4.0/ivy-2.4.0.jar apache-ant-1.9.10/lib/
cp /packages/localsrc/Ant/apache-ivy-2.4.0/lib/{c,o}*.jar apache-ant-1.9.10/lib/
cp /packages/localsrc/Ant/svnant-1.3.1/lib/svnant.jar apache-ant-1.9.10/lib
cp /packages/localsrc/Ant/svnant-1.3.1/lib/svnClientAdapter.jar apache-ant-1.9.10/lib
${THOME}/build/create_pkg TRIBv-apache-ant-19 /tmp/aa
cd
rm -fr /tmp/aa
