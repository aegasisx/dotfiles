# Dotfiles

### Fonts:

    ln -s ~/dotfiles/fonts ~/.fonts

### Git:

    git config --global user.email "nambn.jpit@gmail.com"
    git config --global user.name "nam"

### Bash

Config .bashrc

    echo 'source ~/dotfiles/custom.bashrc' >> ~/.bashrc
    echo 'export PATH=$PATH:~/dotfiles/bin:~/.local/bin' >> ~/.bashrc
    source ~/.bashrc


### Zsh

Install

    sudo apt intall zsh

Use my custom zsh

    mv ~/.zshrc ~/.zshrc_old
    echo 'source ~/dotfiles/custom.zsh' >> ~/.zshrc

Auto start tmux (optional)

    if [ "$TMUX" = "" ]; then tmux; fi

Use custom theme in ~/dotfiles/zsh/themes

    source ~/dotfiles/zsh/themes/xxf

Set default shell (optional)

    chsh -s /bin/zsh

Source from zprofile (optional)

    touch ~/.zprofile
    echo 'source ~/.zshrc' >> ~/.zprofile

### [Fzf](https://github.com/junegunn/fzf)

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install

### [Gogh](https://github.com/Mayccoll/Gogh)

    sudo apt install dconf-cli
    bash -c  "$(wget -qO- https://git.io/vQgMr)"

### Tmux

Install tmux plugin manager:

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Symlink config file

    ln -s ~/dotfiles/tmux/.tmux.conf  ~/.tmux.conf

Create local custom file

    cp ~/dotfiles/tmux/example.local.tmux.conf ~/dotfiles/tmux/local.tmux.conf

Install plugin:

    C-b Shift-I

Reload tmux:

    tmux source-file ~/.tmux.conf

Add following line to .zshrc to auto startup

    if [ "$TMUX" = "" ]; then tmux; fi

Cheat sheet https://tmuxcheatsheet.com

### Vim

    ln -s ~/dotfiles/.vim ~/.vim

Plugin:

    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

