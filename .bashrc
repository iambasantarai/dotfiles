#----------#
# .bashrc  #
#----------#

if [ -f ~/dotfiles/.ubuntu_bashrc ]; then
    . ~/dotfiles/.ubuntu_bashrc
fi

# Alias definitions
if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Export paths
# golang
export PATH=$PATH:/usr/bin/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$HOME/go/bin

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
