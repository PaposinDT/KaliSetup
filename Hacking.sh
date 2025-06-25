#!/bin/bash
#Author.......: Riccardo Papa

mkdir -p ./Hacking
./Phishing.sh
cd ./Hacking

echo
echo "INSTALLING HACKING TOOLS"
sleep 2
echo "Cloning 15 repositories"
echo
sleep 2

clone_repo() {
  local url=$1
  local folder=$2
  local name=$3

  if [ -d "$folder" ]; then
    echo "Skipping $name (already cloned)"
    return
  fi

  repo_url="${url%.git}"
  status=$(curl -o /dev/null -s -w "%{http_code}" "$repo_url")

  if [ "$status" -ne 200 ]; then
    echo "Repository $name not found or inaccessible (HTTP $status). Skipping."
    return
  fi

  echo "Cloning $name: $folder"
  git clone "$url" --quiet
}

clone_repo "https://github.com/thehackingsage/hacktronian.git" "hacktronian" "hacktronian"
clone_repo "https://github.com/rajkumardusad/onex.git" "onex" "onex"
clone_repo "https://github.com/jaykali/hackerpro.git" "hackerpro" "hackerpro"
clone_repo "https://github.com/noob-hackers/infect.git" "infect" "infect"
clone_repo "https://github.com/noob-hackers/grabcam.git" "grabcam" "grabcam"
clone_repo "https://github.com/iBotPeaches/Apktool.git" "Apktool" "Apktool"
clone_repo "https://github.com/CISOfy/lynis.git" "lynis" "lynis"
clone_repo "https://github.com/Cesar-Hack-Gray/FotoSploit.git" "FotoSploit" "FotoSploit"
clone_repo "https://github.com/1N3/Sn1per.git" "Sn1per" "Sn1per"
clone_repo "https://github.com/jekil/awesome-hacking.git" "awesome-hacking" "awesome-hacking"
clone_repo "https://github.com/aydinnyunus/Keylogger.git" "Keylogger" "Keylogger"
clone_repo "https://github.com/D4Vinci/Cr3dOv3r.git" "Cr3dOv3r" "Cr3dOv3r"
clone_repo "https://github.com/thehackingsage/fluxion.git" "fluxion" "fluxion"
clone_repo "https://github.com/chinarulezzz/refluxion.git" "refluxion" "refluxion"
clone_repo "https://github.com/We5ter/Scanners-Box.git" "Scanners-Box" "Scanners-Box"

sleep 2
