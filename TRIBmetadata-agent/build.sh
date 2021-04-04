#!/bin/sh
#
# the install part is done by the fixinstall script
#
git clone https://github.com/illumos/metadata-agent
cd metadata-agent
cargo build --release
${THOME}/build/genpkg TRIBmetadata-agent
cd ..
