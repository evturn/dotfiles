#!/usr/bin/env bash

#      __                   __         __                                __
#     / /_   ____   ____   / /_ _____ / /_ _____ ____ _ ____      _____ / /_
#    / __ \ / __ \ / __ \ / __// ___// __// ___// __ `// __ \    / ___// __ \
#   / /_/ // /_/ // /_/ // /_ (__  )/ /_ / /   / /_/ // /_/ /_  (__  )/ / / /
#  /_.___/ \____/ \____/ \__//____/ \__//_/    \__,_// .___/(_)/____//_/ /_/
#                                                   /_/

cd "$(dirname "${BASH_SOURCE}")";

function doIt() {
  rsync --exclude ".git/" \
    --exclude "init/" \
    --exclude ".DS_Store" \
    --exclude "bootstrap.sh" \
    --exclude "README.md" \
    -avh --no-perms . ~;
  source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt;
else
  read -p "This may (will) overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
  echo "";
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt;
  fi;
fi;
unset doIt;

reload;
