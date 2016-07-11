#!/bin/sh
#
rm -fr /tmp/j1 /tmp/jEdit /tmp/man /tmp/bin
java -jar ${THOME}/tarballs/jedit5.3.0install.jar 
# Install under /tmp instead of $HOME, not the API documentation
mkdir -p /tmp/j1/usr/lib/jEdit
mkdir -p /tmp/j1/usr/bin
mkdir -p /tmp/j1/usr/share/man/man1
mv /tmp/jEdit/5.3.0 /tmp/j1/usr/lib/jEdit
mv /tmp/man/man1/jedit.1 /tmp/j1/usr/share/man/man1
mv /tmp/bin/jedit /tmp/j1/usr/bin
gsed -i s:/tmp/jEdit/5.3.0/:/usr/lib/jEdit/5.3.0/: /tmp/j1/usr/bin/jedit
mv /tmp/j1/usr/lib/jEdit/5.3.0/macros/Misc/Generate\ Encodings\ List.bsh /tmp/j1/usr/lib/jEdit/5.3.0/macros/Misc/Generate_Encodings_List.bsh
mv /tmp/j1/usr/lib/jEdit/5.3.0/macros/Misc/Generate\ Modes\ List.bsh /tmp/j1/usr/lib/jEdit/5.3.0/macros/Misc/Generate_Modes_List.bsh
mv /tmp/j1/usr/lib/jEdit/5.3.0/macros/Misc/Insert\ Plugins\ List.bsh /tmp/j1/usr/lib/jEdit/5.3.0/macros/Misc/Insert_Plugins_List.bsh
${THOME}/build/create_pkg TRIBjedit /tmp/j1
rm -fr /tmp/j1 /tmp/jEdit /tmp/man /tmp/bin
