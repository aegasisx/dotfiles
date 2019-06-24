ZSH_THEME="bira"
plugins=(git z laravel fzf)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:~/dotfiles/bin:~/.local/bin

# Alias
alias cake='bin/cake'
alias cdw='cd ~/workspace'

# git alias
alias gst='git status -sb'
alias glo='git --no-pager log --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s" --date=short --max-count=10'
alias gaa='git add -A'
alias gcm='git commit -m'
alias gca='git commit --amend'
alias gcan='git commit --amend --no-edit'
alias glg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)" --all'
alias gbs='git-branch-status'
alias gbc='git-branch-compare'

# list
alias ll='LC_COLLATE="C" ls -alh --group-directories-first'
alias l='LC_COLLATE="C" ls -A --group-directories-first'

# path
alias path="sed 's/:/\n/g' <<< "$PATH""

