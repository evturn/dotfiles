#!/usr/bin/env bash
#     ___  ____  ____  ___________________  ___   ___        __ 
#    / _ )/ __ \/ __ \/_  __/ __/_  __/ _ \/ _ | / _ \  ___ / / 
#   / _  / /_/ / /_/ / / / _\ \  / / / , _/ __ |/ ___/ (_-</ _ \
#  /____/\____/\____/ /_/ /___/ /_/ /_/|_/_/ |_/_/  (_)___/_//_/
#                                                               

cd "$(dirname "${BASH_SOURCE}")" 

rsync --include './' \
      --include '.bash_profile' \
      --include '.bashrc' \
      --include '.curlrc' \
      --include '.ghci' \
      --include '.hushlogin' \
      --include '.inputrc' \
      --include '.screenrc' \
      --include '.wgetrc' \
      --exclude '*' \
      -avh --no-perms . ~;
source ~/.bash_profile;
