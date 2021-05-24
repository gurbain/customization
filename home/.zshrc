# Support for 26 colors
autoload -U colors && colors
export TERM="xterm-256color"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Plugins
plugins=(battery docker git zsh-completions zsh-autosuggestions)

# PowerLevel9k ZSH theme
zsh_wifi_signal(){
    local signal=$(nmcli device wifi | grep yes | awk "{print $8}")
    local color="%F{yellow}"
    [[ $signal -gt 75 ]] && color="%F{green}"
    [[ $signal -lt 50 ]] && color="%F{red}"
    echo -n "%{$color%}\uf230  $signal%{%f%}"
}

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
source $ZSH/custom/custom_theme.zsh

# Search the web
alias gg="googler -l 'en' --np -n 5" # googler project
alias gh="ghs repo" # github in shell project

##### Custom variables ######

# Language
#export LC_ALL=en_GB.UTF-8
#export LANG=en_GB.UTF-8
#export LANGUAGE=en_GB.UTF-8

# JAVA
#export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
#export CLASSPATH=/usr/lib/jvm/java-1.8.0-openjdk-amd64/lib:$CLASSPATH
#export PATH=$HOME/bin:$HOME/bin/*:$JAVA_HOME/bin:$PATH
#export JRE_HOME
#export PATH

## ROS
#source /opt/ros/kinetic/setup.zsh
#export ROS_HOSTNAME=192.168.1.102/
#export ROS_MASTER_URI=http://192.168.1.102:5555/
#source /opt/ros/foxy/setup.zsh

# Local
export PATH=$( find $HOME/bin/ -type d -printf ":%p" ):$PATH

# Blender
export PATH=/opt/blender:$PATH

# Node; nvm, npm, yarn
export PATH="$PATH:$(yarn global bin)"

## ROS
source $HOME/.rosrc
#export ROS_IPV6=on
#export ROS_MASTER_URI=http://master:11311
