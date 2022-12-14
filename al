alias o="xdg-open"
alias v="nvim"
alias cp="cp -v"
alias mv="mv -v"
alias mkd="mkdir -pv"
alias chx="chmod +x"
alias dv="doas nvim"
alias dcp="doas cp -v"
alias dmv="doas mv -v"
alias dmkd="doas mkdir -pv"

alias ls="exa --color=always --group-directories-first"  # all files and dirs
alias la="exa -al --color=always --group-directories-first --git" # my preferred listing
alias ll="exa -l --color=always --group-directories-first --git -ahl"  # long format
alias l=="exa -a | rg "^\.""

#alias ls="exa --color=never --group-directories-first"  # all files and dirs
#alias la="exa -al --color=never --group-directories-first --git" # my preferred listing
#alias ll="exa -l --color=never --group-directories-first --git -ahl"  # long format
#alias l=="exa -a | rg "^\.""

alias xs="doas xbps-install -S"
alias xr="doas xbps-remove -Ro"
alias xu="doas xbps-install -Su"
alias xq="xbps-query -Rs"
alias xbi="xbps-install"
alias xf="xbps-fetch"
alias q="xbps-query"

alias mkdwm="doas rm config.h; doas make clean install"
alias z="zathura"
alias gc="git clone"
alias sx="startx"
alias ns="nsxiv"
alias pl="doas updatedb; plocate"
alias bm="bashmount"
alias sv="doas vsv"
alias rr="ranger"
alias pa="paru"

alias ea="nvim ~/.config/shell/aliases"
alias ef="nvim ~/.config/fish/config.fish"
alias ex="nvim ~/.config/sxhkd/sxhkdrc"
alias ep="nvim ~/.config/shell/profile"

alias frc="source ~/.config/fish/config.fish"
alias resx="pkill -USR1 -x"
alias rm="trash-put"

alias sys="systemctl"
alias dsys="doas systemctl"
