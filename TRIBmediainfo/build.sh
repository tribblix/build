#!/bin/sh
#
# mediainfo
#
# build zenlib libmedianfo and mediainfo together
# needs libtool installed so autogen.sh works
#
rm -fr ZenLib MediaInfoLib MediaInfo
${THOME}/build/unpack libzen_0.4.37
${THOME}/build/unpack libmediainfo_0.7.98
${THOME}/build/unpack mediainfo_0.7.98

zap install libtool

cd ZenLib/Project/GNU/Library
sh autogen.sh
./configure --prefix=/usr
gmake -j
cd ../../../..

sed -i s=/pow=/std::pow= MediaInfoLib/Source/MediaInfo/Multiple/File_Mk.cpp

cd MediaInfoLib/Project/GNU/Library
sh autogen.sh
./configure --prefix=/usr
gmake -j
cd ../../../..

cd MediaInfo/Project/GNU/CLI
sh autogen.sh
./configure --prefix=/usr
gmake -j
cd ../../../..

rm -fr /tmp/zmi
cd ZenLib/Project/GNU/Library
gmake install DESTDIR=/tmp/zmi
cd ../../../..
cd MediaInfoLib/Project/GNU/Library
gmake install DESTDIR=/tmp/zmi
cd ../../../..
cd MediaInfo/Project/GNU/CLI
gmake install DESTDIR=/tmp/zmi
cd ../../../..

${THOME}/build/create_pkg TRIBmediainfo /tmp/zmi

rm -fr /tmp/zmi
