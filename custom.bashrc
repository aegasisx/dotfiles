#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX="("
SCM_THEME_PROMPT_SUFFIX=")"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX="(${yellow}"
GIT_THEME_PROMPT_SUFFIX="${bold_white})"

# Nicely formatted terminal prompt
export PS1="\n┌─${bold_white}[${white}\@${bold_white}] ${bold_green}\u@\h ${bold_blue}\w
${bold_white}└─$(scm_prompt_info)${white} \$ "

alias cdw='cd ~/workspace'

# git alias
alias gst='git status -sb'
alias glo='git log --pretty=format:"%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s" --date=short'
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

alias cake='bin/cake'
