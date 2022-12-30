# Support for 26 colors
autoload -U colors && colors
export TERM="xterm-256color"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# PowerLevel9k ZSH theme
zsh_wifi_signal(){
    local signal=$(nmcli device wifi | grep yes | awk "{print $8}")
    local color="%F{yellow}"
    [[ $signal -gt 75 ]] && color="%F{green}"
    [[ $signal -lt 50 ]] && color="%F{red}"
    echo -n "%{$color%}\uf230  $signal%{%f%}"
}

source $ZSH/custom/custom_theme.zsh

DISABLE_AUTO_TITLE="true"
plugins=(battery git docker)

##### Custom variables ######

## Language
export LANGUAGE="C.UTF-8"
export LC_ALL="C.UTF-8"
