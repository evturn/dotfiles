#!/usr/bin/env bash
#     ___  ____  ____  ___________________  ___   ___        __
#    / _ )/ __ \/ __ \/_  __/ __/_  __/ _ \/ _ | / _ \  ___ / /
#   / _  / /_/ / /_/ / / / _\ \  / / / , _/ __ |/ ___/ (_-</ _ \
#  /____/\____/\____/ /_/ /___/ /_/ /_/|_/_/ |_/_/  (_)___/_//_/
#

cd "$(dirname "${BASH_SOURCE}")"

function createSymlink() {
  if [ ! -L $2 ]; then
    ln -s $1 $2
    echo "Link created: $2"
  fi
}

SRC_BASHRC="${PWD}/.bashrc"
CFG_BASHRC="${HOME}/.bashrc"

SRC_BASH_PROFILE="${PWD}/.bash_profile"
CFG_BASH_PROFILE="${HOME}/.bash_profile"

SRC_GITCONFIG="${PWD}/.gitconfig"
CFG_GITCONFIG="${HOME}/.gitconfig"

SRC_IPYTHON="${PWD}/ipython/ipython_config.py"
CFG_IPYTHON="${HOME}/.ipython/profile_default/ipython_config.py"

SRC_NVIM="${PWD}/nvim/"
CFG_NVIM="${HOME}/.config/nvim"

SRC_VIM="${PWD}/vim/"
CFG_VIM="${HOME}/.vim"

SRC_VIMRC="${PWD}/vimrc"
CFG_VIMRC="${HOME}/.vimrc"

SRC_GVIMRC="${PWD}/vim/gvimrc"
CFG_GVIMRC="${HOME}/.gvimrc"

SRC_BASH="${PWD}/settings/"
CFG_BASH="${HOME}/settings"

createSymlink $SRC_IPYTHON $CFG_IPYTHON
createSymlink $SRC_NVIM $CFG_NVIM
createSymlink $SRC_VIM $CFG_VIM
createSymlink $SRC_VIMRC $CFG_VIMRC
createSymlink $SRC_GVIMRC $CFG_GVIMRC
createSymlink $SRC_GITCONFIG $CFG_GITCONFIG
createSymlink $SRC_BASHRC $CFG_BASHRC
createSymlink $SRC_BASH_PROFILE $CFG_BASH_PROFILE
createSymlink $SRC_BASH $CFG_BASH

rsync --include './' \
      --include '.curlrc' \
      --include '.ghci' \
      --include '.hushlogin' \
      --include '.inputrc' \
      --include '.screenrc' \
      --include '.wgetrc' \
      --exclude '*' \
      -avh --no-perms . ~;
source ~/.bash_profile;
