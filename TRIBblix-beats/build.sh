#!/bin/sh
#
# packetbeat needs libpcap
#
# cd to a temporary location first
#
setenv GOPATH `pwd`
mkdir -p $GOPATH/src/github.com/elastic
cd $GOPATH/src/github.com/elastic
git clone https://github.com/elastic/beats.git
cd beats/filebeat
env PATH=/usr/versions/go-1.6/bin:$PATH gmake
cd ../metricbeat
env PATH=/usr/versions/go-1.6/bin:$PATH gmake
cd ../packetbeat
env PATH=/usr/versions/go-1.6/bin:$PATH gmake
cd ..

rm -fr /tmp/bbb

#
# copy binaries
#
mkdir -p /tmp/bbb/opt/tribblix/beats/bin
cp filebeat/filebeat /tmp/bbb/opt/tribblix/beats/bin
cp metricbeat/metricbeat /tmp/bbb/opt/tribblix/beats/bin
cp packetbeat/packetbeat /tmp/bbb/opt/tribblix/beats/bin

#
# and sample config files
#
mkdir -p /tmp/bbb/opt/tribblix/beats/conf
cp filebeat/filebeat*.yml /tmp/bbb/opt/tribblix/beats/conf
cp filebeat/filebeat*.json /tmp/bbb/opt/tribblix/beats/conf
cp metricbeat/metricbeat*.yml /tmp/bbb/opt/tribblix/beats/conf
cp metricbeat/metricbeat*.json /tmp/bbb/opt/tribblix/beats/conf
cp packetbeat/packetbeat*.yml /tmp/bbb/opt/tribblix/beats/conf
cp packetbeat/packetbeat*.json /tmp/bbb/opt/tribblix/beats/conf

#
# and docs
#
mkdir -p /tmp/bbb/opt/tribblix/beats/doc
cp README.md LICENSE /tmp/bbb/opt/tribblix/beats/doc

${THOME}/build/create_pkg TRIBblix-beats /tmp/bbb
rm -fr /tmp/bbb
