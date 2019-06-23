# Dotfiles

## Fresh Desktop

Fonts:

    ln -s ~/dotfiles/fonts ~/.fonts

Install package:

    sudo apt install chromium-browser vim chrome-gnome-shell neofetch nmap curl wget apt-transport-https cmake dconf-cli xclip

Git:

    git config --global user.email "nambn.jpit@gmail.com"
    git config --global user.name "nam"

## Shell

### Bash

.bashrc config:

    echo 'source ~/dotfiles/custom.bashrc' >> ~/.bashrc
    echo 'export PATH=$PATH:~/dotfiles/bin:~/.local/bin' >> ~/.bashrc
    source ~/.bashrc

### [Bash-it](https://github.com/Bash-it/bash-it)

Install

    git clone --depth=1 <https://github.com/Bash-it/bash-it.git> ~/.bash_it
    ~/.bash_it/install.sh

### Zsh

Install

    sudo apt intall zsh

Set default shell (optional)

    chsh -s /bin/zsh

### [Fzf](https://github.com/junegunn/fzf)

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

### [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)

Install

    sh -c "$(curl -fsSL <https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)">
    echo 'source ~/dotfiles/custom.zsh' >> ~/.zshrc

Remove these lines in zshrc
> plugins=(git)\
> &\
> ZSH_THEME=...

Source from zprofile (optional)

    touch ~/.zprofile
    echo 'source ~/.zshrc' >> ~/.zprofile

## [Gogh](https://github.com/Mayccoll/Gogh)

    sudo apt install dconf-cli
    bash -c  "$(wget -qO- https://git.io/vQgMr)"

## Tmux

Install tmux plugin manager:

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Symlink config file

    ln -s ~/dotfiles/tmux/.tmux.conf  ~/.tmux.conf

Install plugin:

    C-b Shift-I

Reload tmux:

    tmux source-file ~/.tmux.conf

Add following line to .zshrc to auto startup

    if [ "$TMUX" = "" ]; then tmux; fi

Cheat sheet https://tmuxcheatsheet.com

## Vim

    ln -s ~/dotfiles/.vim ~/.vim

Plugin:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## Cmatrix - Screensaver

Install cmatrix

    sudo apt install cmatrix

Add these lines to ~/.screenrc

    blankerprg cmatrix -ab -u2
    idle 60 blanker
