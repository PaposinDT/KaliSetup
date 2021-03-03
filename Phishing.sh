#!/bin/bash
mkdir ./Phishing
./Information-Gathering.sh
cd ./Phishing
echo "INSTALLING PHISHING TOOLS"
sleep 3
echo "Cloning 7 repositories"
sleep 2
echo "Cloning SocialPhish:              |-|-|-|-|-|-|-|-|"
git clone https://github.com/xHak9x/SocialPhish.git --quiet
echo "Cloning SocialFish:               |-|-|-|-|-|-|-|"
git clone https://github.com/UndeadSec/SocialFish.git --quiet
echo "Cloning king-phisher:             |-|-|-|-|-|"
git clone https://github.com/rsmusllp/king-phisher.git --quiet
echo "Cloning PhishMailer:              |-|-|-|-|"
git clone https://github.com/BiZken/PhishMailer.git --quiet
echo "Cloning HiddenEye:                |-|-|-|"
git clone https://github.com/DarkSecDevelopers/HiddenEye-Legacy.git --quiet
echo "Cloning Phisher:                  |-|-|"
git clone https://github.com/yezz123/Phisher --quiet
echo "Cloning maskphish:                |-|"
git clone https://github.com/jaykali/maskphish.git --quiet
sleep 2
