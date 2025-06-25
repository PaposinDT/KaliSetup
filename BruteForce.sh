#!/bin/bash
#Author.......: Riccardo Papa

mkdir -p ./BruteForce
cd ./BruteForce

echo "INSTALLING BRUTEFORCE TOOLS"
sleep 2
echo "Cloning 12 repositories"
echo
sleep 2

clone_repo() {
  local url=$1
  local folder=$2
  local name=$3

  # Controlla se la cartella esiste già
  if [ -d "$folder" ]; then
    echo "Skipping $name (already cloned)"
    return
  fi

  # Controlla se la repo esiste (status HTTP 200)
  status=$(curl -o /dev/null -s -w "%{http_code}\n" "$url")

  if [ "$status" -ne 200 ]; then
    echo "Repository $name not found or inaccessible (HTTP $status). Skipping."
    return
  fi

  echo "Cloning $name: $folder"
  git clone "$url" --quiet
}

clone_repo "https://github.com/Bitwise-01/Instagram-.git" "Instagram-" "Insta-Brute"
clone_repo "https://github.com/1N3/BruteX.git" "BruteX" "BruteX"
clone_repo "https://github.com/kitabisa/ssb.git" "ssb" "ssb"
clone_repo "https://github.com/duyet/bruteforce-database.git" "bruteforce-database" "bruteforce-database"
clone_repo "https://github.com/insightglacier/Dictionary-Of-Pentesting.git" "Dictionary-Of-Pentesting" "Dictionary-Of-Pentesting"
clone_repo "https://github.com/Screetsec/BruteSploit.git" "BruteSploit" "BruteSploit"
clone_repo "https://github.com/Gioelio/Hack-Google-Password.git" "Hack-Google-Password" "Google-Password"
clone_repo "https://github.com/Manisso/fsociety.git" "fsociety" "fsociety"
clone_repo "https://github.com/The404Hacking/ZIP-Password-BruteForcer.git" "ZIP-Password-BruteForcer" "ZIP-BruteForcer"
clone_repo "https://github.com/ReddyyZ/URLBrute-Py.git" "URLBrute-Py" "URLBrute-Py"
clone_repo "https://github.com/vanhauser-thc/thc-hydra.git" "thc-hydra" "thc-hydra"
clone_repo "https://github.com/LandGrey/pydictor.git" "pydictor" "pydictor"

sleep 2
