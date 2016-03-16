## OSX Dev Environment Installation

## Xcode

[Download](https://itunes.apple.com/us/app/xcode/id497799835?mt=12)

## Homebrew

```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Sublime Text 2

##### `subl` alias in bash

In your ~/.bash_profile:

```
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:$PATH
export EDITOR='subl -w'
```

```bash
sudo rm -rf /usr/local/bin/subl
sudo ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin
```
`subl .` Test to see it works


##### Package Control

In Sublime `View` > `Show Console`

Paste the following command:

```
import urllib2,os,hashlib; h = 'eb2297e1a458f27d836c04bb0cbaf282' + 'd0e7a3098092775ccb37ca9d6b2e4b7d'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler()) ); by = urllib2.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); open( os.path.join( ipp, pf), 'wb' ).write(by) if dh == h else None; print('Error validating download (got %s instead of %s), please try manual install' % (dh, h) if dh != h else 'Please restart Sublime Text to finish installation')
```

Restart to see changes

##### HTML syntax highlighting for `type="text/template"`

In Sublime `Packages` > `Preferences` > `Browse Packages` > `HTML/HTML.tmLanguage`

Change line 286 from:

```
<string>(?:^\s+)?(&lt;)((?i:script))\b(?![^&gt;]*/&gt;)</string>
```

to

```
<string>(?:^\s+)?(&lt;)((?i:script))\b(?![^&gt;]*/&gt;)(?!.*type=["']text/template['"])</string>
```

Restart to see changes

## Git

```bash
brew install git
```

##### Global config

```bash
git config --global user.name <USERNAME>
git config --global user.email <EMAIL@WHATEVER.com>
```

##### Bash highlighter

In ~/.gitconfig:

```
[user]
    name = hl
    email = <EMAIL@WHATEVER.com>
    name = <YOURNAME>
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

##### Linking GitHub SSH Keys

```bash
ssh-keygen -t rsa -b 4096 -C <EMAIL@WHATEVER.com>
```

Press enter for the following prompts
```bash
Enter file in which to save the key (/Users/<USER>/.ssh/id_rsa):
// press enter
Enter passphrase (empty for no passphrase):
// press enter
Enter same passphrase again:
// press enter
```

Copy your key

```bash
dd:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa:00:aa <EMAIL@WHATEVER.com>
```

```bash
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
```

On github.com `settings` > `ssh keys`

Paste key and save

Return to command line

```bash
ssh -T git@github.com
```

## Node

Installing nvm

```bash
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
. ~/.nvm/nvm.sh
```

In ~/.bash_profile:

```
source $(brew --prefix nvm)/nvm.sh
export PATH="/usr/local/bin:/user/local/sbin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export NVM_DIR="~/.nvm"
```

## MongoDB

```bash
brew install mongodb
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
```

In ~/.bash_profile:

```
export PATH="/Users/src/dudeman/mongodb/bin:$PATH"
```

In command line:

```bash
sudo mkdir ~/src/mongodb/data/db
mongod --dbpath /src/mongodb/data/db
```

## Redis

[Download](http://download.redis.io/redis-stable.tar.gz)

Inside redis directory:

```bash
make
```


## Bash Aliases

In ~/.bash_profile:

```
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias mkdir='mkdir -pv'
alias chrome='open -a "Google Chrome"'
alias show_files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide_files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
```

##### Git autocompletion

[Gist](https://github.com/git/git/blob/master/contrib/completion/git-completion.bash)

Paste in ~/.git-completion.bash

##### Git branch notifications

In ~/.bash_profile:

```
if [ -f ~/.bash_prompt.sh ]; then
  source ~/.bash_prompt.sh
fi
```

##### Git completion support

In ~/.bash_profile:

```
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi
```

##### Bash Prompt Hightlighter

[Gist](https://gist.github.com/evturn/3aac79d424959482e996)

Paste in ~/.bash_prompt.sh
