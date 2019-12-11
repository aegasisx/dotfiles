# Dotfiles

### Vim

    ln -s ~/dotfiles/.vim ~/.vim

### Fonts:

    ln -s ~/dotfiles/fonts ~/.fonts

### Git:

    git config --global user.email "nambn.jpit@gmail.com"
    git config --global user.name "nambn"

### Bash

Config .bashrc

    echo 'source ~/dotfiles/custom.bashrc' >> ~/.bashrc
    echo 'export PATH=$PATH:~/dotfiles/bin:~/.local/bin' >> ~/.bashrc
    source ~/.bashrc


### Zsh

Install

    sudo apt install zsh

Open .zshrc

    vim ~/.zshrc

Add these line

    source ~/dotfiles/custom.zsh
    source ~/dotfiles/zsh/themes/xxf #theme=xxf,bira
    #if [ "$TMUX" = "" ]; then tmux; fi #auto start tmux

Set default shell (optional)

    chsh -s /bin/zsh <username>

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

Debian & Ubuntu

    sudo apt install xsel # or xclip

RedHat & CentOS

    sudo yum install xsel # or xclip

Install tmux plugin manager:

    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Symlink config file

    ln -s ~/dotfiles/tmux/.tmux.conf  ~/.tmux.conf

Create local custom file

    cp ~/dotfiles/tmux/example.local.tmux.conf ~/dotfiles/tmux/local.tmux.conf

`tmux`, then install plugin:

    C-a Shift-I

Reload tmux:

    tmux source-file ~/.tmux.conf

Add following line to .zshrc to auto startup

    if [ "$TMUX" = "" ]; then tmux; fi

Cheat sheet https://tmuxcheatsheet.com

tmux-copycat

>prefix + / - regex search (strings work too)
>
>prefix + ctrl-f - simple file search
>prefix + ctrl-g - jumping over git status files (best used after git status command)
>prefix + alt-h - jumping over SHA-1/SHA-256 hashes (best used after git log command)
>prefix + ctrl-u - url search (http, ftp and git urls)
>prefix + ctrl-d - number search (mnemonic d, as digit)
>prefix + alt-i - ip address search
>These start "copycat mode" and jump to first match.
>
>"Copycat mode" bindings
>These are enabled when you search with copycat:
>
>n - jumps to the next match
>N - jumps to the previous match
>To copy a highlighted match:
>
>Enter - if you're using Tmux vi mode
>ctrl-w or alt-w - if you're using Tmux emacs mode
>Copying a highlighted match will take you "out" of copycat mode. Paste with prefix + ] (this is Tmux >default paste).

laktak/extrakto

>You can fuzzy find your text instead of selecting it by hand:
>
>press tmux prefix + tab to start extrakto
>fuzzy find the text/path/url/line
>press
>tab to insert it to the current pane,
>enter to copy it to the clipboard,
>ctrl-o to open the path/url or
>ctrl-e to edit with $EDITOR
