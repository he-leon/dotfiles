# Dotfiles

## Requirements
### Environment
- ZSH
- zplug
- Byobu (Tmux)
- Xfce
- neovim

### Fonts
- DejaVuSansMono Nerd Font Mono

### ZSH Plugins
Use zplug to install the following plugins
- zsh-syntax-highlighting.zsh
- zsh-autosuggestions.zsh
- you-should-use.plugin.zsh

## Installation
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts && wget https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/DejaVuSansMono/Regular/complete/DejaVu%20Sans%20Mono%20Nerd%20Font%20Complete%20Mono.ttf?raw=true -O "DejaVu Sans Mono Nerd Font Complete Mono.ttf"
    git clone https://github.com/he-leon/dotfiles $HOME/.dotfiles 
    cd $HOME/.dotfiles
    git submodule update --init --recursive --remote
    ./install.sh
    xrdb -merge ~/.Xresources 
