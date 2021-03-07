#!/bin/bash
#Title........: KaliSetup.sh
#Description..: This is a tool that automate best tools installation.
#Author.......: Riccardo Papa
#Version......: 2.4
#Usage........: sudo ./KaliSetup.sh
# copyright(please read the license before sharing the code)
clear
echo """
			 ____________________________________________
			|			                     |
			|        The Code By :- Riccardo Papa        |
			|	 Telegram :- @PaposinDT              |
			|        Facebook :- https://cutt.us/kfNBv   |
			|        Youtube :-  https://cutt.us/fp49D   |
			|        Git Hub :- github.com/PaposinDT     |
            		|        Instagram:- https://cutt.us/2ZDRu   |
			|___________________________________________ | """
sleep 2
echo "					Version 1.1
                    	 	 Coded By Riccardo Papa
           	 	Want to support me?  paypal.me/ricky2006 
		   This tool is created for educational purpose only!" \  #
#
echo 
sleep 1
echo "The installation speed depends on the signal strength."
echo 
sleep 1
echo "The installation process could take up to 20 minutes"
echo
sleep 1
echo "Installing..."
echo
sleep 1
mkdir ./Tools
./Hacking.sh
cd ./Tools
echo
echo "INSTALLING GENERIC TOOLS"
sleep 2
echo "Cloning 14 repositories"
echo
sleep 2
echo "Cloning airgeddon:                   |-|-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/v1s1t0r1sh3r3/airgeddon.git --quiet
echo "Cloning XCTR-Hacking-Tools:   	     |-|-|-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/capture0x/XCTR-Hacking-Tools/ --quiet
echo "Cloning sAINT:                	     |-|-|-|-|-|-|-|-|-|-|-|" 
git clone https://github.com/tiagorlampert/sAINT.git --quiet
echo "Cloning trape:              	     |-|-|-|-|-|-|-|-|-|-|"
git clone https://github.com/jofpin/trape.git --quiet
echo "Cloning androidlockcracker:  	     |-|-|-|-|-|-|-|-|-|"
git clone https://github.com/georgenicolaou/androidlockcracker.git --quiet
echo "Cloning lazyaircrack:         	     |-|-|-|-|-|-|-|-|"
git clone https://github.com/3xploitGuy/lazyaircrack.git --quiet
echo "Cloning setoolkit:                   |-|-|-|-|-|-|-|"
git clone https://github.com/trustedsec/social-engineer-toolkit/ setoolkit/ --quiet
echo "Cloning stup:  	                     |-|-|-|-|-|-|"
git clone https://github.com/iridakos/stup.git --quiet
echo "Cloning vuls:                 	     |-|-|-|-|-|" 
git clone https://github.com/future-architect/vuls.git --quiet
echo "Cloning bash-prompt-generator:       |-|-|-|-|"
git clone https://github.com/Scriptim/bash-prompt-generator.git --quiet
echo "Cloning blackhat-arsenal-tools:      |-|-|-|"
git clone https://github.com/toolswatch/blackhat-arsenal-tools.git --quiet
echo "Cloning Xeexe:         		     |-|-|"
git clone https://github.com/persianhydra/Xeexe-TopAntivirusEvasion.git --quiet
echo "Cloning http-req-smuggling:          |-|"
git clone https://github.com/anshumanpattnaik/http-request-smuggling.git --quiet
sleep 2
echo "INSTALLATION COMPLETED. IF YOU LIKE THE SCRIPT, PLEASE LEAVE A STAR ON THE GITHUB REPOSITORY!"
