# Prompt
PROMPT='%F{cyan}%1~%f %F{green}%B'"∮"'%b%f '

# Completion
autoload -U compinit
compinit

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

export PATH=$PATH:~/go/bin
