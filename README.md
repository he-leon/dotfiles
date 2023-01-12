# Dotfiles

## Requirements
### Environment
- ZSH
- [zplug](https://github.com/zplug/zplug)
- Byobu (Tmux)
- Xfce
- neovim
- python3-neovim

### Fonts
- DejaVuSansMono Nerd Font Mono

### ZSH Plugins
Use zplug to install the following plugins
- zsh-syntax-highlighting.zsh
- zsh-autosuggestions.zsh
- you-should-use.plugin.zsh

## Installation
### Install fonts
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf?raw=true -O "DejaVu Sans Mono Nerd Font Complete Mono.ttf"
### Clone dotfiles repo
    git clone https://github.com/he-leon/dotfiles $HOME/.dotfiles 
    cd $HOME/.dotfiles
    git submodule update --init --recursive --remote
### Create symlinks to the cloned dotfiles repo
    ./install.sh
### ZSH setup
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
    source ~/.zshrc
    zplug install
### Refresh .Xresources
    xrdb -merge ~/.Xresources 
### Setup nvim
    nvim ~/.config/nvim/lua/heleon/packer.lua 
    ## In nvim:
    ## :so 
    ## :PackerSync 
