#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
rm -fr /tmp/ds
mkdir -p /tmp/ds/usr/share/dia
cd /tmp/ds/usr/share/dia || exit 1
for file in Automata AUTOSAR building_site central_data_processing \
  CH-1 chemistry_lab Circuit2 CMOS digital edpc electric2 Electrical \
  electronic gradient HVAC LST Optics Racks renewable_energy \
  scenegraph value_stream_mapping
do
    wget http://dia-installer.de/shapes/${file}/${file}.zip
    unzip ${file}.zip
    mv README README.$file
    mv COPYING COPYING.$file
    rm ${file}.zip
done
${THOME}/build/create_pkg TRIBdia-extra-shapes /tmp/ds
cd
rm -fr /tmp/ds
