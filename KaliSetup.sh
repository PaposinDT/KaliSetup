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
			|___________________________________________ |
"""

sleep 2
echo "					Version 1.1
                    	 	 Coded By Riccardo Papa
           	 	Want to support me?  paypal.me/ricky2006 
		   This tool is created for educational purpose only!"
echo 
sleep 1
echo "The installation speed depends on the signal strength."
echo 
sleep 1
echo "The installation process could take up to 7 minutes"
echo
sleep 1
echo "Installing..."
echo
sleep 1

mkdir -p ./Tools
./Hacking.sh
cd ./Tools || { echo "Failed to enter Tools directory"; exit 1; }

echo
echo "INSTALLING GENERIC TOOLS"
sleep 2
echo "Cloning 14 repositories"
echo
sleep 2

clone_repo() {
  local url=$1
  local folder=$2
  local name=$3

  # Se non specificato, folder = nome repo senza .git
  if [ -z "$folder" ]; then
    folder=$(basename "${url%.git}")
  fi

  if [ -d "$folder" ]; then
    echo "Skipping $name (already cloned)"
    return
  fi

  # Controlla che il repo esista (200 OK)
  repo_url="${url%.git}"
  status=$(curl -o /dev/null -s -w "%{http_code}" "$repo_url")

  if [ "$status" -ne 200 ]; then
    echo "Repository $name not found or inaccessible (HTTP $status). Skipping."
    return
  fi

  echo "Cloning $name: $folder"
  git clone "$url" "$folder" --quiet
}

clone_repo "https://github.com/v1s1t0r1sh3r3/airgeddon.git" "" "airgeddon"
clone_repo "https://github.com/capture0x/XCTR-Hacking-Tools.git" "" "XCTR-Hacking-Tools"
clone_repo "https://github.com/tiagorlampert/sAINT.git" "" "sAINT"
clone_repo "https://github.com/jofpin/trape.git" "" "trape"
clone_repo "https://github.com/georgenicolaou/androidlockcracker.git" "" "androidlockcracker"
clone_repo "https://github.com/3xploitGuy/lazyaircrack.git" "" "lazyaircrack"
clone_repo "https://github.com/trustedsec/social-engineer-toolkit.git" "setoolkit" "setoolkit"
clone_repo "https://github.com/iridakos/stup.git" "" "stup"
clone_repo "https://github.com/future-architect/vuls.git" "" "vuls"
clone_repo "https://github.com/Scriptim/bash-prompt-generator.git" "" "bash-prompt-generator"
clone_repo "https://github.com/toolswatch/blackhat-arsenal-tools.git" "" "blackhat-arsenal-tools"
clone_repo "https://github.com/persianhydra/Xeexe-TopAntivirusEvasion.git" "" "Xeexe"
clone_repo "https://github.com/anshumanpattnaik/http-request-smuggling.git" "" "http-req-smuggling"
sleep 1

cd ..
echo "Removing unnecessary files."
sleep 1
rm -r Hacking.sh
rm -r LICENSE
rm -r README.md
rm -r KaliSetup.sh
rm -r Phishing.sh
rm -r Information-Gathering.sh
rm -r DDoS.sh
rm -r BruteForce.sh
sleep 1

echo "Renaming Folder into "Ethical-Hacking"."
cd ..
mv KaliSetup Ethical-Hacking
sleep 1

echo "INSTALLATION COMPLETED. IF YOU LIKE THE SCRIPT, PLEASE LEAVE A STAR ON THE GITHUB REPOSITORY!"
