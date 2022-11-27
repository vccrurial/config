source ~/.config/aliases
source ~/.config/shell/profile
source ~/.cache/wal/colors-tty.sh

# fnm
export PATH="/home/vcc/.local/share/fnm:$PATH"
eval "`fnm env`"

# fnm
export PATH="/home/vcc/.local/share/fnm:$PATH"
eval "`fnm env`"


autoload -U colors && colors
setopt autocd
stty stop undef	
setopt interactive_comments

HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE="$XDG_CONFIG_HOME/zsh/history"

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

bindkey -v
export KEYTIMEOUT=1

bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select () {
    case $KEYMAP in
        vicmd) echo -ne '\e[1 q';;      # block
        viins|main) echo -ne '\e[5 q';; # beam
    esac
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey -M vicmd '^[[P' vi-delete-char
bindkey -M vicmd '^e' edit-command-line
bindkey -M visual '^[[P' vi-delete

fcd() {
    cd "$(find -type d | fzf)"
}

open() {
    xdg-open "$(find -type f | fzf)"
}

source /home/vcc/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
