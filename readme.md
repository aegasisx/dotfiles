Fresh Desktop
===

.bashrc config:
```
echo 'source ~/dotfiles/custom.bashrc' >> ~/.bashrc
echo 'export PATH=$PATH:~/dotfiles/bin:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
```

Fonts:
```
ln -s ~/dotfiles/fonts ~/.fonts
```

Install apt:
```
sudo apt install chromium-browser vim chrome-gnome-shell neofetch nmap curl apt-transport-https
```

Tmux
===
Install tmux plugin manager:
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Symlink config file
```
ln -s ~/dotfiles/tmux/.tmux.conf  ~/.tmux.conf
```

Install plugin:
```
C-b Shift-I
```

Screensaver
===
Install cmatrix
```
sudo apt install cmatrix
```

Add these lines to ~/.screenrc
```
blankerprg cmatrix -ab -u2
idle 60 blanker
```

Vim
===
```
ln -s ~/dotfiles/vim ~/.vim
