#!/bin/bash
#Author.......: Riccardo Papa
mkdir -p ./Phishing
./Information-Gathering.sh
cd ./Phishing

echo
echo "INSTALLING PHISHING TOOLS"
sleep 2
echo "Cloning 12 repositories"
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

  # Rimuovo .git per la verifica HTTP (GitHub accetta senza .git)
  repo_url="${url%.git}"
  status=$(curl -o /dev/null -s -w "%{http_code}" "$repo_url")

  if [ "$status" -ne 200 ]; then
    echo "Repository $name not found or inaccessible (HTTP $status). Skipping."
    return
  fi

  echo "Cloning $name: $folder"
  git clone "$url" --quiet
}

clone_repo "https://github.com/xHak9x/SocialPhish.git" "SocialPhish" "SocialPhish"
clone_repo "https://github.com/UndeadSec/SocialFish.git" "SocialFish" "SocialFish"
clone_repo "https://github.com/rsmusllp/king-phisher.git" "king-phisher" "king-phisher"
clone_repo "https://github.com/BiZken/PhishMailer.git" "PhishMailer" "PhishMailer"
clone_repo "https://github.com/DarkSecDevelopers/HiddenEye-Legacy.git" "HiddenEye-Legacy" "HiddenEye"
clone_repo "https://github.com/yezz123/Phisher.git" "Phisher" "Phisher"
clone_repo "https://github.com/jaykali/maskphish.git" "maskphish" "maskphish"
clone_repo "https://github.com/elceef/dnstwist.git" "dnstwist" "dnstwist"
clone_repo "https://github.com/Anish-M-code/URL-obfuscator.git" "URL-obfuscator" "URL-obfuscator"
clone_repo "https://github.com/swagkarna/Bypass-Insta-2FA-.git" "Bypass-Insta-2FA-" "Bypass-Insta-2FA"
clone_repo "https://github.com/xbaysal11/phish-js.git" "phish-js" "phish-js"

sleep 2
