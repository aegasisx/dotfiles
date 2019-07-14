# Source default .zshrc file
source ~/dotfiles/zsh/default.zsh

# export
export PATH=$PATH:~/dotfiles/bin:~/.local/bin

# Load libs
for config_file (~/dotfiles/zsh/lib/*); do
    source $config_file
done

# Load plugin
for plugin (~/dotfiles/zsh/plugins/*); do
    source $plugin
done

# Load theme
source ~/dotfiles/zsh/themes/xxf

# Load custom alias
source ~/dotfiles/zsh/aliases.zsh

