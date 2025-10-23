# Prompt
PROMPT='%F{cyan}%1~%f %F{green}%B'"󰘧"'%b%f '

# Completion
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

export PATH=$PATH:~/go/bin
