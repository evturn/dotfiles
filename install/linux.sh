#!/usr/bin/env bash

# Linux rsync

echo "Updating Linux dotfiles";

rsync --exclude ".git/" \
      --exclude ".gitmodules" \
      --exclude "init/" \
      --exclude "install/" \
      --exclude "nvim/" \
      --exclude "vim/" \
      --exclude ".macos" \
      --exclude ".bash_profile" \
      --exclude "bootstrap.sh" \
      --exclude "README.md" \
      -avh --no-perms . ~;
source ~/.profile;
