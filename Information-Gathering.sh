#!/bin/bash
#Author.......: Riccardo Papa
mkdir ./Information-Gathering
./DDoS.sh
cd ./Information-Gathering
echo
echo "INSTALLING INFORMATION GATHERING TOOLS"
sleep 2
echo "Cloning 21 repositories"
echo
sleep 2
echo "Cloning RED_HAWK:               |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/Tuhinshubhra/RED_HAWK --quiet
echo "Cloning Th3inspector:           |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/Moham3dRiahi/Th3inspector.git --quiet
echo "Cloning sherlock:               |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|" 
git clone https://github.com/sherlock-project/sherlock.git --quiet
echo "Cloning fbi:                    |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/xHak9x/fbi.git --quiet
echo "Cloning badKarma:               |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/r3vn/badKarma.git --quiet
echo "Cloning TrackUrl:               |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/cryptomarauder/TrackUrl.git --quiet
echo "Cloning Raccoon:                |-|-|-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/evyatarmeged/Raccoon.git --quiet
echo "Cloning sandmap:                |-|-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/trimstray/sandmap --quiet
echo "Cloning sparta:                 |-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/secforce/sparta.git --quiet
echo "Cloning dmitry:                 |-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/jaygreig86/dmitry.git --quiet
echo "Cloning IP-Biter:          	|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/damianofalcioni/IP-Biter.git --quiet
echo "Cloning webdork:           	|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/HACKE-RC/webdork.git --quiet
echo "Cloning stargather:        	|-|-|-|-|-|-|-|-|-|" 
git clone https://github.com/dwisiswant0/stargather.git --quiet
echo "Cloning IP-Tracker:        	|-|-|-|-|-|-|-|-|"
git clone https://github.com/anonymousproo/IP-Tracker.git --quiet
echo "Cloning LittleBrother:          |-|-|-|-|-|-|-|"
git clone https://github.com/Ankesh054-official/LittleBrother-GUI-.git --quiet
echo "Cloning osint-framework:        |-|-|-|-|-|-|"
git clone https://github.com/osint-dev-team/osint-framework.git --quiet
echo "Cloning URLExtractor:           |-|-|-|-|-|"
git clone https://github.com/The404Hacking/URLExtractor.git --quiet
echo "Cloning OneForAll:              |-|-|-|-|"
git clone https://github.com/shmilylty/OneForAll.git --quiet
echo "Cloning Infoga:                 |-|-|-|"
git clone https://github.com/m4ll0k/Infoga.git --quiet
echo "Cloning DaProfiler:             |-|-|"
git clone https://github.com/dalunacrobate/DaProfiler.git --quiet
echo "Cloning PhoneInfoga:            |-|"
git clone https://github.com/sundowndev/PhoneInfoga.git --quiet
sleep 2
