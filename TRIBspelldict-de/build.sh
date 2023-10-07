#!/bin/tcsh
#
# we use the "normal" (not "large") SCOWL lists
#
$THOME/build/unpack igerman98-20161207
cd igerman98-20161207
sed -i 's:-i latin1:-i ISO8859-1:' Makefile
gmake hunspell-all AFFIX_EXPANDER=aspell

rm -fr /tmp/sp-de
mkdir -p /tmp/sp-de/usr/share/hunspell
cp hunspell/de_{AT,CH,DE}.{aff,dic} /tmp/sp-de/usr/share/hunspell
cd /tmp/sp-de/usr/share/hunspell
#
# symlinks
#
# these aliases derived from the OI list
#
ln -s de_CH.aff de_de_LI.aff
ln -s de_CH.dic de_de_LI.dic
foreach alt ( de_BE de_LU )
ln -s de_DE.aff ${alt}.aff
ln -s de_DE.dic ${alt}.dic
end

${THOME}/build/create_pkg TRIBspelldict-de /tmp/sp-de
cd
rm -fr /tmp/sp-de
