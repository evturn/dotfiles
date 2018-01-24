#!/usr/bin/env bash

# macOS rsync

echo "Updating macOS dotfiles";

rsync --exclude ".DS_Store" \
      --exclude ".git/" \
      --exclude ".gitmodules" \
      --exclude "init/" \
      --exclude "install/" \
      --exclude "nvim/" \
      --exclude "vim/" \
      --exclude ".profile" \
      --exclude "bootstrap.sh" \
      --exclude "README.md" \
      -avh --no-perms . ~;
source ~/.bash_profile;
