#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
# Run the installer. It places files into ~/Jomic and the desktop file into
# ~/.kde/share/applnk/Graphics/Jomic.desktop
# Then convert those files into a package
#
rm -fr /tmp/jj
mkdir -p /tmp/jj/usr/bin /tmp/jj/usr/share/applications
cd
tar cf - Jomic | (cd /tmp/jj/usr/share ; tar xf -)
cat /tmp/jj/usr/share/Jomic/jomic.sh | sed s:/export/home/ptribble/:/usr/share/: > /tmp/jj/usr/bin/jomic
chmod 755 /tmp/jj/usr/bin/jomic
cp ~/.kde/share/applnk/Graphics/Jomic.desktop /tmp/jj/usr/share/applications
gsed -i s:/export/home/ptribble/:/usr/share/: /tmp/jj/usr/share/applications/Jomic.desktop
gsed -i s:/export/home/ptribble/:/usr/share/: /tmp/jj/usr/share/Jomic/jomic.sh
gsed -i s:/usr/share/Jomic/jomic.sh:/usr/bin/jomic: /tmp/jj/usr/share/applications/Jomic.desktop
gsed -i s:/usr/share/Jomic/site/images/logo.png:/usr/share/Jomic/images/jomic.png: /tmp/jj/usr/share/applications/Jomic.desktop
rm -fr /tmp/jj/usr/share/Jomic/Uninstaller
${THOME}/build/create_pkg TRIBjomic /tmp/jj
rm -fr /tmp/jj
