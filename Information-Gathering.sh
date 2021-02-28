#!/bin/bash
mkdir ./Information-Gathering
./DDoS.sh
cd ./Information-Gathering
echo "INSTALLING INFORMATION GATHERING TOOLS"
sleep 3
echo "Cloning 10 repositories"
sleep 2
echo "Cloning RED_HAWK:               |-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/Tuhinshubhra/RED_HAWK --quiet
echo "Cloning Th3inspector:           |-|-|-|-|-|-|-|-|-|"
git clone https://github.com/Moham3dRiahi/Th3inspector.git --quiet
echo "Cloning sherlock:               |-|-|-|-|-|-|-|-|" 
git clone https://github.com/sherlock-project/sherlock.git --quiet
echo "Cloning fbi:                    |-|-|-|-|-|-|-|"
git clone https://github.com/xHak9x/fbi.git --quiet
echo "Cloning badKarma:               |-|-|-|-|-|-|"
git clone https://github.com/r3vn/badKarma.git --quiet
echo "Cloning TrackUrl:               |-|-|-|-|-|"
git clone https://github.com/cryptomarauder/TrackUrl.git --quiet
echo "Cloning Raccoon:                |-|-|-|-|"
git clone https://github.com/evyatarmeged/Raccoon.git --quiet
echo "Cloning sandmap:                |-|-|-|"
git clone https://github.com/trimstray/sandmap --quiet
echo "Cloning sparta:                 |-|-|"
git clone https://github.com/secforce/sparta.git --quiet
echo "Cloning dmitry:                 |-|"
git clone https://github.com/jaygreig86/dmitry.git --quiet
sleep 2
