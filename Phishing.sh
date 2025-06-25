#!/bin/bash
#Author.......: Riccardo Papa

mkdir -p ./Phishing
./Information-Gathering.sh
cd ./Phishing || { echo "Failed to enter Phishing directory"; exit 1; }

echo
echo "INSTALLING PHISHING TOOLS"
sleep 2
echo "Cloning 12 repositories"
echo
sleep 2

spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    while kill -0 "$pid" 2>/dev/null; do
        for i in $(seq 0 3); do
            printf "\r[%c] Cloning in progress..." "${spinstr:i:1}"
            sleep $delay
        done
    done
    printf "\r[✔] Clone completed!          \n"
}

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
  git clone "$url" --quiet &
  spinner $!
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
