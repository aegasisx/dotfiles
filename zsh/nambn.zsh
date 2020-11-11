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
# Alias
alias cake='bin/cake'
alias gst='git status -sb'
alias glo='git --no-pager log --pretty=format:"%C(yellow)%h %Cred%cr %Cblue%an%C(auto)%d %Creset%s" --date=short --max-count=20'
alias glg='git --no-pager log --graph --pretty="%Cred%h%Creset - %Cgreen%cr%C(auto)%d%Creset %s %C(bold blue)<%an>%Creset" --all --max-count=20'
alias glga='git log --graph --pretty="%Cred%h%Creset - %Cgreen%cr%C(auto)%d%Creset %s %C(bold blue)<%an>%Creset" --all'
alias ll='LC_COLLATE="C" ls -alh --group-directories-first'
alias l='LC_COLLATE="C" ls -A --group-directories-first'
alias path="sed 's/:/\n/g' <<< "$PATH""
alias gfc='git-fuzzy-checkout'

