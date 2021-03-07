#!/bin/bash
#Author.......: Riccardo Papa
mkdir ./Phishing
./Information-Gathering.sh
cd ./Phishing
echo
echo "INSTALLING PHISHING TOOLS"
sleep 2
echo "Cloning 12 repositories"
echo
sleep 2
echo "Cloning SocialPhish:              |-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/xHak9x/SocialPhish.git --quiet
echo "Cloning SocialFish:               |-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/UndeadSec/SocialFish.git --quiet
echo "Cloning king-phisher:             |-|-|-|-|-|-|-|-|-|"
git clone https://github.com/rsmusllp/king-phisher.git --quiet
echo "Cloning PhishMailer:              |-|-|-|-|-|-|-|-|"
git clone https://github.com/BiZken/PhishMailer.git --quiet
echo "Cloning HiddenEye:                |-|-|-|-|-|-|-|"
git clone https://github.com/DarkSecDevelopers/HiddenEye-Legacy.git --quiet
echo "Cloning Phisher:                  |-|-|-|-|-|-|"
git clone https://github.com/yezz123/Phisher --quiet
echo "Cloning maskphish:                |-|-|-|-|-|"
git clone https://github.com/jaykali/maskphish.git --quiet
echo "Cloning dnstwist:                 |-|-|-|-|"
git clone https://github.com/elceef/dnstwist.git --quiet
echo "Cloning URL-obfuscator:           |-|-|-|"
git clone https://github.com/Anish-M-code/URL-obfuscator.git --quiet
echo "Cloning Bypass-Insta-2FA:         |-|-|"
git clone https://github.com/swagkarna/Bypass-Insta-2FA-.git --quiet
echo "Cloning phish-js:                 |-|"
git clone https://github.com/xbaysal11/phish-js.git --quiet
sleep 2
