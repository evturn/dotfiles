                               888          888     .d888 d8b 888                   
                               888          888    d88P"  Y8P 888                   
                               888          888    888        888                   
                           .d88888  .d88b.  888888 888888 888 888  .d88b.  .d8888b  
                          d88" 888 d88""88b 888    888    888 888 d8P  Y8b 88K      
                          888  888 888  888 888    888    888 888 88888888 "Y8888b. 
                          Y88b 888 Y88..88P Y88b.  888    888 888 Y8b.          X88 
                           "Y88888  "Y88P"   "Y888 888    888 888  "Y8888   88888P' 
                                                                                    
                                                                                    
                                                                                    

Creating symlinks
```bash
ln -s dotfiles/vim ~/.vim
ln -s dotfiles/vim/vimrc ~/.vimrc
ln -s dotfiles/vim/gvimrc ~/.gvimrc
ln -s dotfiles/nvim ~/.config/nvim
```

Initializing git submodules
```bash
git submodule init
git submodule update
```

Updating git submodules
```bash
git submodule foreach git pull origin master
```

Copying everything else to `$HOME`
```bash
sh bootstrap.sh
```
