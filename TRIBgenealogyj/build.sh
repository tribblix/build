#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#

#
# new build, just a zip download
# need this version for jdk11 compatibility
#
mkdir -p /tmp/gg/usr/versions/GenealogyJ
cd /tmp/gg/usr/versions/GenealogyJ
$THOME/build/unpack genj_app-6865

#
# clean up the install tree
#
rm -fr Uninstaller
rm -f run.bat run.cmd
chmod a+x run.sh

mkdir -p /tmp/gg/usr/share/applications
mkdir -p /tmp/gg/usr/share/pixmaps

# convert genj.ico /tmp/gg/usr/share/pixmaps/genealogyj.png
# cat $HOME/.local/share/applications/Genealogy*desktop | sed -e s:/tmp/gg/:/: -e 's:Exec=/.*/java :Exec=java :' -e s:/usr/versions/GenealogyJ/genj.ico:genealogyj: -e 's:Categories=:Categories=Utility;:' > /tmp/gg/usr/share/applications/Genealogy.desktop

#
# temporary hack, copy the prior versions
#
cp /usr/share/applications/Genealogy.desktop /tmp/gg/usr/share/applications/Genealogy.desktop
cp /usr/share/pixmaps/genealogyj.png /tmp/gg/usr/share/pixmaps/genealogyj.png

mkdir -p /tmp/gg/usr/bin
cd /tmp/gg/usr/bin
ln -s ../../usr/versions/GenealogyJ/run.sh genealogyj
sed -i s:grep:/usr/gnu/bin/grep: /tmp/gg/usr/versions/GenealogyJ/run.sh

#
# newer java busted by modularity
#
sed -i 's:-Xmx512m:--add-opens java.desktop/java.awt=ALL-UNNAMED -Xmx512m:' /tmp/gg/usr/versions/GenealogyJ/run.sh

# and package it
cd
${THOME}/build/create_pkg TRIBgenealogyj /tmp/gg
rm -fr /tmp/gg
