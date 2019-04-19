#!/bin/tcsh
#
# we use the "normal" (not "large") SCOWL lists
#
rm -fr /tmp/sp-en
mkdir -p /tmp/sp-en/usr/share/hunspell
cd /tmp/sp-en/usr/share/hunspell
#
# download
#
wget https://sourceforge.net/projects/wordlist/files/speller/2018.04.16/hunspell-en_CA-2018.04.16.zip
wget https://sourceforge.net/projects/wordlist/files/speller/2018.04.16/hunspell-en_AU-2018.04.16.zip
wget https://sourceforge.net/projects/wordlist/files/speller/2018.04.16/hunspell-en_US-2018.04.16.zip
wget https://sourceforge.net/projects/wordlist/files/speller/2018.04.16/hunspell-en_GB-ise-2018.04.16.zip
wget https://sourceforge.net/projects/wordlist/files/speller/2018.04.16/hunspell-en_GB-ize-2018.04.16.zip
#
# unpack
#
unzip -q hunspell-en_AU-2018.04.16.zip
unzip -q hunspell-en_CA-2018.04.16.zip
unzip -q hunspell-en_GB-ise-2018.04.16.zip
unzip -q hunspell-en_GB-ize-2018.04.16.zip
unzip -q hunspell-en_US-2018.04.16.zip
rm -f *.zip
#
# symlinks
#
# for british english, prefer "ise"
#
ln -s en_GB-ise.aff en_GB.aff
ln -s en_GB-ise.dic en_GB.dic
#
# these aliases derived from the OI list
#
ln -s en_US.aff en_PH.aff
ln -s en_US.dic en_PH.dic
foreach alt ( en_AG en_BS en_BW en_BZ en_DK en_GH en_HK en_IE en_IN en_JM en_NA en_NG en_NZ en_SG en_TT en_ZA en_ZW )
ln -s en_GB.aff ${alt}.aff
ln -s en_GB.dic ${alt}.dic
end

${THOME}/build/create_pkg TRIBspelldict-en /tmp/sp-en
cd
rm -fr /tmp/sp-en
