if status is-interactive
    # Commands to run in interactive sessions can go here
end

source ~/.config/aliases
set fish_greeting
fish_vi_key_bindings

setenv XDG_DATA_HOME "$HOME/.local/share"
setenv XDG_CONFIG_HOME "$HOME/.config"
setenv XDG_STATE_HOME "$HOME/.local/state"
setenv XDG_CACHE_HOME "$HOME/.cache"
setenv XDG_RUNTIME_DIR "/run/user/1000"
setenv VIS_PATH "$XDG_CONFIG_HOME/vis/"

# fish_add_path /home/vcc/.local/bin
# fish_add_path /opt/texlive/2022/bin/x86_64-linux
# fish_add_path /home/vcc/void-packages
# fish_add_path /home/vcc/.cargo/bin
# fish_add_path /home/vcc/.emacs.d/bin/
# fish_add_path /home/vcc/go/bin/
# setenv EDITOR "nvim"
# setenv BROWSER "firefox"
# setenv TERMINAL "st"
# setenv DOT_SAGE "$XDG_CONFIG_HOME/sage"
# setenv HISTFILE "$XDG_STATE_HOME/bash/history"
# setenv LESSHISTFILE "$XDG_STATE_HOME/less/history"
# setenv RUSTUP_HOME "$XDG_DATA_HOME/rustup"
# setenv GTK2_RC_FILES "$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
# any-nix-shell fish --info-right | source
