#!/usr/bin/env bash
#     ___  ____  ____  ___________________  ___   ___        __ 
#    / _ )/ __ \/ __ \/_  __/ __/_  __/ _ \/ _ | / _ \  ___ / / 
#   / _  / /_/ / /_/ / / / _\ \  / / / , _/ __ |/ ___/ (_-</ _ \
#  /____/\____/\____/ /_/ /___/ /_/ /_/|_/_/ |_/_/  (_)___/_//_/
#                                                               

cd "$(dirname "${BASH_SOURCE}")";

if [ "$(uname)" = "Darwin" ]; then
  /bin/bash ./install/macos.sh
fi

if [ "$(uname)" = "Linux" ]; then
  /bin/bash ./install/linux.sh
fi
