#!/bin/sh
#
# SPDX-License-Identifier: CDDL-1.0
#
git clone https://gitlab.com/categulario/pizarra-gtk.git
cd pizarra-gtk
cargo build --release

rm -fr /tmp/pz
mkdir -p /tmp/pz/usr/bin
mkdir -p /tmp/pz/usr/share/doc/pizarra
mkdir -p /tmp/pz/usr/share/applications
mkdir -p /tmp/pz/usr/share/icons/hicolor/scalable/apps

ginstall -Dm755 "target/release/pizarra" "/tmp/pz/usr/bin/pizarra"
ginstall -Dm644 README.md LICENSE "/tmp/pz/usr/share/doc/pizarra"
ginstall -Dm644 res/pizarra.desktop "/tmp/pz/usr/share/applications/pizarra.desktop"
ginstall -Dm644 res/icons/tk.categulario.pizarra.svg "/tmp/pz/usr/share/icons/hicolor/scalable/apps/pizarra.svg"

${THOME}/build/create_pkg TRIBpizarra /tmp/pz

rm -fr /tmp/pz
