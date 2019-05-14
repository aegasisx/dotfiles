#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX="("
SCM_THEME_PROMPT_SUFFIX=")"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX="("
GIT_THEME_PROMPT_SUFFIX=")"

# Nicely formatted terminal prompt
function prompt_command(){
  export PS1="\n┌─${bold_white}[${reset_color}\@${bold_white}] ${bold_green}\u@${bold_blue}\h ${yellow}\w
${reset_color}└─${red}$(scm_prompt_info)${yellow}${reset_color} \$ "
}

safe_append_prompt_command prompt_command
