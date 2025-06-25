#!/bin/bash
#Author.......: Riccardo Papa

mkdir -p ./DDoS
./BruteForce.sh
cd ./DDoS

echo
echo "INSTALLING DDOS TOOLS"
sleep 2
echo "Cloning 18 repositories"
echo
sleep 2

clone_repo() {
  local url=$1
  local folder=$2
  local name=$3

  # Se cartella già esiste, skip
  if [ -d "$folder" ]; then
    echo "Skipping $name (already cloned)"
    return
  fi

  # Controlla se la repo esiste (usiamo la url senza .git per la verifica)
  repo_url="${url%.git}"
  status=$(curl -o /dev/null -s -w "%{http_code}" "$repo_url")

  if [ "$status" -ne 200 ]; then
    echo "Repository $name not found or inaccessible (HTTP $status). Skipping."
    return
  fi

  echo "Cloning $name: $folder"
  git clone "$url" --quiet
}

clone_repo "https://github.com/5inco/PHDoS.git" "PHDoS" "PHDoS"
clone_repo "https://github.com/H1R0GH057/Anonymous.git" "Anonymous" "Anonymous"
clone_repo "https://github.com/Hydra7/Planetwork-DDOS.git" "Planetwork-DDOS" "Planetwork-DDOS"
clone_repo "https://github.com/foreni-packages/t50.git" "t50" "t50"
clone_repo "https://github.com/Anlos0023/webdos-ddoser.git" "webdos-ddoser" "webdos-ddoser"
clone_repo "https://github.com/gkbrk/slowloris.git" "slowloris" "slowloris"
clone_repo "https://github.com/jseidl/GoldenEye.git" "GoldenEye" "GoldenEye"
clone_repo "https://github.com/grafov/hulk.git" "hulk" "hulk"
clone_repo "https://github.com/Leeon123/CC-attack.git_
