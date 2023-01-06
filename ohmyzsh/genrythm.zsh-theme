# terminal coloring
#export CLICOLOR=1
#export LSCOLORS=dxFxCxDxBxegedabagacad

#local git_branch='$(git_prompt_info)%{$reset_color%}$(git_remote_status)'

#PROMPT="%{$fg[green]%}[%n@%m]%{$reset_color%}-%{$reset_color%}%{$fg[yellow]%}(%~)-%{$reset_color%}${git_branch}
#%{$fg[green]%}╰> %{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_DETAILED=true
#ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_PREFIX="%{$fg[yellow]%}("
#ZSH_THEME_GIT_PROMPT_REMOTE_STATUS_SUFFIX="%{$fg[yellow]%})%{$reset_color%}"

#ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE=" +"
#ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE_COLOR=%{$fg[green]%}

#ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE=" -"
#ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE_COLOR=%{$fg[red]%}

PROMPT='%{$fg_bold[green]%}╭─%{$fg_bold[green]%}%n%{$fg[magenta]%}@%{$fg_bold[green]%}%m%{$fg_bold[green]%} %{$fg[yellow]%}%~ $(git_prompt_info)
%{$fg[green]%}╰> %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}[%{$fg[cyan]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}] %{$fg[red]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}] %{$fg[green]%}✔%{$reset_color%}"
