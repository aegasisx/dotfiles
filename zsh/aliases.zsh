# Alias
alias cake='bin/cake'
alias gst='git status -sb'
alias glo='git --no-pager log --pretty=format:"%C(yellow)%h %Cred%cr %Cblue%an%C(auto)%d %Creset%s" --date=short --max-count=20'
alias glg='git --no-pager log --graph --pretty="%Cred%h%Creset - %Cgreen%cr%C(auto)%d%Creset %s %C(bold blue)<%an>%Creset" --all --max-count=20'
alias glga='git log --graph --pretty="%Cred%h%Creset - %Cgreen%cr%C(auto)%d%Creset %s %C(bold blue)<%an>%Creset" --all'
alias ll='LC_COLLATE="C" ls -alh --group-directories-first'
alias l='LC_COLLATE="C" ls -A --group-directories-first'
alias path="sed 's/:/\n/g' <<< "$PATH""

