#!/bin/tcsh
#
rm -fr /tmp/ds
mkdir -p /tmp/ds/usr/share/dia
cd /tmp/ds/usr/share/dia
foreach file ( Automata AUTOSAR building_site central_data_processing \
CH-1 chemistry_lab Circuit2 CMOS digital edpc electric2 Electrical \
electronic gradient HVAC LST Optics Racks renewable_energy \
scenegraph value_stream_mapping )
wget http://dia-installer.de/shapes/${file}/${file}.zip
unzip ${file}.zip
mv README README.$file
mv COPYING COPYING.$file
rm ${file}.zip
end
${THOME}/build/create_pkg TRIBdia-extra-shapes /tmp/ds
rm -fr /tmp/ds
