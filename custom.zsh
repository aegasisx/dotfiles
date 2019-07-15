ZSH=~/dotfiles/zsh

if [[ -z "$ZSH_CACHE_DIR" ]]; then
  ZSH_CACHE_DIR="$ZSH/cache"
fi

setopt histignorealldups sharehistory

# add a function path
fpath=($ZSH/functions $ZSH/completions $fpath)

# Load all stock functions (from $fpath files) called below.
autoload -U compaudit compinit

# Load plugin to fpath then compinit
for plugin ($ZSH/plugins/*); do
    fpath=($plugin $fpath)
done

if [[ "$OSTYPE" = darwin* ]]; then
  SHORT_HOST=$(scutil --get ComputerName 2>/dev/null) || SHORT_HOST=${HOST/.*/}
else
  SHORT_HOST=${HOST/.*/}
fi

if [ -z "$ZSH_COMPDUMP"  ]; then
    ZSH_COMPDUMP="${ZDOTDIR:-${HOME}}/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"
fi

compinit -u -C -d "${ZSH_COMPDUMP}"

# Load configs
for config_file ($ZSH/lib/*); do
    source $config_file
done

# Load plugins
for plugin ($ZSH/plugins/*); do
    source $plugin
done

# export
export PATH=$PATH:~/dotfiles/bin:~/.local/bin

# Load theme
source $ZSH/themes/xxf

# Load custom alias
source $ZSH/aliases.zsh

