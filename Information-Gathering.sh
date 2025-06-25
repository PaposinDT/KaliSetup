#!/bin/bash
# Author.......: Riccardo Papa

mkdir -p ./Information-Gathering
./DDoS.sh
cd ./Information-Gathering

spinner() {
    local pid=$!
    local delay=0.1
    local spinstr='|/-\'
    while kill -0 $pid 2>/dev/null; do
        for (( i=0; i<${#spinstr}; i++ )); do
            printf "\r%s [%c]" "$spinner_message" "${spinstr:$i:1}"
            sleep $delay
        done
    done
    printf "\r%s [✔]\n" "$spinner_message"
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

  spinner_message="Cloning $name"
  git clone "$url" --quiet &
  spinner
}

echo
echo "INSTALLING INFORMATION GATHERING TOOLS"
sleep 2
echo "Cloning 21 repositories"
echo
sleep 2

clone_repo "https://github.com/Tuhinshubhra/RED_HAWK.git" "RED_HAWK" "RED_HAWK"
clone_repo "https://github.com/Moham3dRiahi/Th3inspector.git" "Th3inspector" "Th3inspector"
clone_repo "https://github.com/sherlock-project/sherlock.git" "sherlock" "sherlock"
clone_repo "https://github.com/xHak9x/fbi.git" "fbi" "fbi"
clone_repo "https://github.com/r3vn/badKarma.git" "badKarma" "badKarma"
clone_repo "https://github.com/cryptomarauder/TrackUrl.git" "TrackUrl" "TrackUrl"
clone_repo "https://github.com/evyatarmeged/Raccoon.git" "Raccoon" "Raccoon"
clone_repo "https://github.com/trimstray/sandmap.git" "sandmap" "sandmap"
clone_repo "https://github.com/secforce/sparta.git" "sparta" "sparta"
clone_repo "https://github.com/jaygreig86/dmitry.git" "dmitry" "dmitry"
clone_repo "https://github.com/damianofalcioni/IP-Biter.git" "IP-Biter" "IP-Biter"
clone_repo "https://github.com/HACKE-RC/webdork.git" "webdork" "webdork"
clone_repo "https://github.com/dwisiswant0/stargather.git" "stargather" "stargather"
clone_repo "https://github.com/anonymousproo/IP-Tracker.git" "IP-Tracker" "IP-Tracker"
clone_repo "https://github.com/Ankesh054-official/LittleBrother-GUI-.git" "LittleBrother-GUI-" "LittleBrother"
clone_repo "https://github.com/osint-dev-team/osint-framework.git" "osint-framework" "osint-framework"
clone_repo "https://github.com/The404Hacking/URLExtractor.git" "URLExtractor" "URLExtractor"
clone_repo "https://github.com/shmilylty/OneForAll.git" "OneForAll" "OneForAll"
clone_repo "https://github.com/m4ll0k/Infoga.git" "Infoga" "Infoga"
clone_repo "https://github.com/dalunacrobate/DaProfiler.git" "DaProfiler" "DaProfiler"
clone_repo "https://github.com/sundowndev/PhoneInfoga.git" "PhoneInfoga" "PhoneInfoga"

sleep 2

