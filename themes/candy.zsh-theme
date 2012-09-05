typeset -A host_repr

# translate hostnames into shortened, colorcoded strings
host_repr=(
           'lykos'  "%{$fg_bold[green]%}lykos"
           'backus' "%{$fg_bold[red]%}backus"
          )

local user="%{$fg_bold[green]%}%n"
local host="${host_repr[$(hostname)]:-$(hostname)}%{$reset_color%}"
local date="%{$fg[blue]%}%D{[%I:%M:%S]}"
local wdir="%{$reset_color%}%{$fg[white]%}[%~]%{$reset_color%} "


PROMPT=$'${user}@${host} ${date} ${wdir} $(git_prompt_info)\
%{$fg[blue]%}->%{$fg_bold[blue]%} %#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}*%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
