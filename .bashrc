#----------#
# .bashrc  #
#----------#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Basic bash settings
export EDITOR="nvim"
export TERMINAL="alacritty"

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# correct minor errors in the spelling of a directory component 
shopt -s cdspell
complete -d cd

# append to the history file, dont overwrite it
shopt -s histappend

# check the window size after each command and, if necessarey
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Prompt setting
declare -a PROMPTS
PROMPTS=(
    "∮"
    "∯"
    "≎"
)
index=$(shuf -i 0-$((${#PROMPTS[@]}-1)) -n 1)
prompt=${PROMPTS[$index]}
PS1='\[\e[1;36m\]\w\[\e[0m\] \[\e[0;32m\]$prompt\[\e[0m\] '

# Alias definitions
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Export paths
# golang
export PATH=$PATH:/usr/bin/go
export PATH=$PATH:$HOME/go/bin
