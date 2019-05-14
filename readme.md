Fresh Desktop
===
Fonts:
```
ln -s ~/dotfiles/fonts ~/.fonts
```
Install package:
```
sudo apt install chromium-browser vim chrome-gnome-shell neofetch nmap curl wget apt-transport-https cmake
```
##Shell
### Bash
.bashrc config:
```
echo 'source ~/dotfiles/custom.bashrc' >> ~/.bashrc
echo 'export PATH=$PATH:~/dotfiles/bin:~/.local/bin' >> ~/.bashrc
source ~/.bashrc
```
### Zsh
Install
```
sudo apt intall zsh
```
Set default shell
```
chsh -s /bin/zsh
```
###[Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
Install
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
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
Vim
===
```
ln -s ~/dotfiles/vim ~/.vim
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
