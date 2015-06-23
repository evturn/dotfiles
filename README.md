# OSX Dev Environment Installation

## Xcode

```
https://itunes.apple.com/us/app/xcode/id497799835?mt=12
```

## Homebrew

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Sublime Text 2

```
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'
```

```
$ sudo rm -rf /usr/local/bin/subl
$ sudo ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin
$ subl .
```

## Git

```
$ brew install git
```

```
$ git config --global user.name dudeman
$ git config --global user.email dudeman@aol.com
$ subl ~/.gitconfig
```

#### Write in Sublime and save
```
[user]
    name = hl
    email = dudeman@aol.com
    name = Dude Man
[color]
    ui = always
[color "branch"]
    current = green reverse
    local = green
    remote = yellow
[color "status"]
    added = green
    changed = yellow
    untracked = red
[core]
    editor = nano
[push]
    default = current
```

#### Generate SSH
```
$ ssh-keygen -t rsa -b 4096 -C dudeman@aol.com
```
> Enter file in which to save the key (/Users/dudeman/.ssh/id_rsa): [Press enter]
> Enter passphrase (empty for no passphrase): [Type a passphrase]
> Enter same passphrase again: [Type passphrase again]
> dd:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa dudeman@aol.com
```
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/id_rsa
```

#### Link GitHub
```
pbcopy < ~/.ssh/id_rsa.pub
```
> http://github.com -> settings -> ssh keys [Paste key]
```
ssh -T git@github.com
```

## Node.js

```
https://nodejs.org/download/
```
> Universal

```
echo prefix=~/.node >> ~/.npmrc
```
```
export PATH="/usr/local/bin:/user/local/sbin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
```

## MongoDB

```
$ brew install mongodb
$ ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

$ export PATH="/Users/dudeman/mongodb/bin:$PATH"

$ sudo mkdir data/db
$ mongod --dbpath data/db
```

## Redis

```
http://redis.io/download
```
> [Click link] http://download.redis.io/redis-stable.tar.gz.
> Move folder to /src directory
```
$ cd ~/src/redis
$ make
```

## Aliases

```
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias chrome='open-a "Google Chrome"'
alias show_files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide_files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
```

## Sourced Scripts

> https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
```
touch ~/.git-completion.bash
```
> [Paste]
```
subl ~/.bash_profile
```
*Git branch notifications*
```
if [ -f ~/.bash_prompt.sh ]; then
  source ~/.bash_prompt.sh
fi
```
*Git completion support*
```
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi
```