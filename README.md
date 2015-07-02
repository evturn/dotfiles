# OSX Dev Environment Installation

## Xcode

> https://itunes.apple.com/us/app/xcode/id497799835?mt=12

## Homebrew

```
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Bash Profile

`$ touch ~/.bash_profile`

## Sublime Text 2

#### subl alias in bash

> Open .bash_profile with Sublime

```
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'
```

> [Paste] in .bash_profile

```
$ sudo rm -rf /usr/local/bin/subl
$ sudo ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin
$ subl .
```

#### Package Control

> View -> Show Console

```
import urllib2,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler()) ); by = urllib2.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); open( os.path.join( ipp, pf), 'wb' ).write(by) if dh == h else None; print('Error validating download (got %s instead of %s), please try manual install' % (dh, h) if dh != h else 'Please restart Sublime Text to finish installation')
```

> [Paste] in Sublime Console

> Restart Sublime

#### HTML syntax highlighting for `type="text/template"`

> Packages -> Preferences -> Browse Packages -> HTML/HTML.tmLanguage

> Change line 286 from:

`<string>(?:^\s+)?(&lt;)((?i:script))\b(?![^&gt;]*/&gt;)</string>`

> to

`<string>(?:^\s+)?(&lt;)((?i:script))\b(?![^&gt;]*/&gt;)(?!.*type=["']text/template['"])</string>`

> Restart Sublime

## Git

```
$ brew install git
```

#### Global config & bash highlighter

```
$ git config --global user.name dudeman
$ git config --global user.email dudeman@aol.com
```

> [Copy] below

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
```
$ touch ~/.gitconfig
$ subl ~/.gitconfig
```

> [Paste] in .gitconfig

#### Generate SSH
```
$ ssh-keygen -t rsa -b 4096 -C dudeman@aol.com
```

`Enter file in which to save the key (/Users/dudeman/.ssh/id_rsa):`
> [Press enter]

`Enter passphrase (empty for no passphrase):`
> [Type a passphrase]

`Enter same passphrase again:`
> [Type passphrase again]

`dd:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa dudeman@aol.com`
> [Copy key]

```
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/id_rsa
```

#### Link GitHub
```
$ pbcopy < ~/.ssh/id_rsa.pub
```

> http://github.com -> settings -> ssh keys 

> [Paste key]

```
$ ssh -T git@github.com
```

## Node.js

> https://nodejs.org/download/

> [Click] Universal

```
$ echo prefix=~/.node >> ~/.npmrc
```

```
export PATH="/usr/local/bin:/user/local/sbin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
```
> [Paste] in .bash_profile

## MongoDB

```
$ brew install mongodb
$ ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
$ launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
```

```
export PATH="/Users/src/dudeman/mongodb/bin:$PATH"
```
> [Paste in .bash_profile]

```
$ sudo mkdir ~/src/mongodb/data/db
$ mongod --dbpath /src/mongodb/data/db
```

## Redis

> http://download.redis.io/redis-stable.tar.gz.

> Move folder to /src directory

```
$ cd ~/src/redis
$ make
```

## Customize Bash

## Aliases
`subl ~/.bash_profile`
```
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias chrome='open -a "Google Chrome"'
alias show_files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide_files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
```
> [Paste] in .bash_profile

#### Git autocompletion
> https://github.com/git/git/blob/master/contrib/completion/git-completion.bash

> [Copy] entire file

`touch ~/.git-completion.bash`
> [Paste] in .git-completion.bash


#### Bash Prompt
> https://gist.github.com/evturn/3aac79d424959482e996

> [Copy] entire file

```
touch ~/.bash_prompt.sh
subl ~/.bash_prompt.sh
```
> [Paste]

#### Git branch notifications
`subl ~/.bash_profile`
```
if [ -f ~/.bash_prompt.sh ]; then
  source ~/.bash_prompt.sh
fi
```
#### Git completion support
```
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi
```
> [Paste] in .bash_profile