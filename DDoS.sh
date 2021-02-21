#!/bin/bash
mkdir ./DDoS
cd ./DDoS
echo "INSTALLING DDOS TOOLS"
sleep 3
echo "Cloning 10 repositories"
sleep 2
echo "Cloning PHDoS:                  |-|-|-|-|-|-|-|-|-|"
git clone https://github.com/5inco/PHDoS.git --quiet
echo "Cloning Anonymous:              |-|-|-|-|-|-|-|-|"
git clone https://github.com/H1R0GH057/Anonymous.git --quiet
echo "Cloning Planetwork-DDOS:        |-|-|-|-|-|-|-|" 
git clone https://github.com/Hydra7/Planetwork-DDOS.git --quiet
echo "Cloning t50:                    |-|-|-|-|-|-|"
git clone https://github.com/foreni-packages/t50.git --quiet
echo "Cloning webdos-ddoser:          |-|-|-|-|-|"
git clone https://github.com/Anlos0023/webdos-ddoser.git --quiet
echo "Cloning slowloris:              |-|-|-|-|"
git clone https://github.com/gkbrk/slowloris.git --quiet
echo "Cloning GoldenEye:              |-|-|-|"
git clone https://github.com/jseidl/GoldenEye.git --quiet
echo "Cloning hulk:                   |-|-|"
git clone https://github.com/grafov/hulk.git --quiet
echo "Cloning CC-attack:              |-|"
git clone https://github.com/Leeon123/CC-attack.git --quiet