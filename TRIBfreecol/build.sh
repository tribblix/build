#!/bin/sh
#
# Run the installer. It places files into ~/freecol
# Then you convert those into a package
#
rm -fr /tmp/jj
mkdir -p /tmp/jj/usr/bin /tmp/jj/usr/share/applications
cd
tar cf - freecol | (cd /tmp/jj/usr/share ; tar xf -)
cat /tmp/jj/usr/share/freecol/freecol | sed 's:^BINDIR.*:BINDIR=/usr/share/freecol:' > /tmp/jj/usr/bin/freecol
chmod 755 /tmp/jj/usr/bin/freecol
cp /tmp/jj/usr/share/freecol/freecol.desktop /tmp/jj/usr/share/applications
sed -i s:data/freecol.png:/usr/share/freecol/data/freecol.png: /tmp/jj/usr/share/applications/freecol.desktop
rm -fr /tmp/jj/usr/share/freecol/Uninstaller
${THOME}/build/create_pkg TRIBfreecol /tmp/jj
rm -fr /tmp/jj
