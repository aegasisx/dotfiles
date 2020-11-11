# Dotfiles

### Vim

    ln -s ~/dotfiles/.vim ~/.vim

### Fonts:

    ln -s ~/dotfiles/fonts ~/.fonts

### Zsh

Install

    sudo apt install zsh

Open .zshrc

    vim ~/.zshrc

Add these line

    source ~/dotfiles/zsh/nambn.zsh

Set default shell (optional)

    chsh -s /bin/zsh <username>

Source from zprofile (optional)

    touch ~/.zprofile
    echo 'source ~/.zshrc' >> ~/.zprofile

### [Fzf](https://github.com/junegunn/fzf)

    git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
    ~/.fzf/install
