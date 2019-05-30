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
function prompt_command(){
  export PS1="\n┌─${bold_white}[${white}\@${bold_white}] ${bold_green}\u@\h ${bold_blue}\w
${bold_white}└─$(scm_prompt_info)${white} \$ "
}

safe_append_prompt_command prompt_command
