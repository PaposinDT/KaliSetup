#!/bin/bash
# Author.......: Riccardo Papa

mkdir -p ./DDoS
./BruteForce.sh
cd ./DDoS

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

  # Per il controllo uso URL senza .git perché alcune repo lo richiedono
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
echo "INSTALLING DDOS TOOLS"
sleep 2
echo "Cloning 18 repositories"
echo
sleep 2

clone_repo "https://github.com/5inco/PHDoS.git" "PHDoS" "PHDoS"
clone_repo "https://github.com/H1R0GH057/Anonymous.git" "Anonymous" "Anonymous"
clone_repo "https://github.com/Hydra7/Planetwork-DDOS.git" "Planetwork-DDOS" "Planetwork-DDOS"
clone_repo "https://github.com/foreni-packages/t50.git" "t50" "t50"
clone_repo "https://github.com/Anlos0023/webdos-ddoser.git" "webdos-ddoser" "webdos-ddoser"
clone_repo "https://github.com/gkbrk/slowloris.git" "slowloris" "slowloris"
clone_repo "https://github.com/jseidl/GoldenEye.git" "GoldenEye" "GoldenEye"
clone_repo "https://github.com/grafov/hulk.git" "hulk" "hulk"
clone_repo "https://github.com/Leeon123/CC-attack.git" "CC-attack" "CC-attack"
# Aggiungi altre repo qui se vuoi

sleep 2

