#----------#
# .bashrc  #
#----------#

# Get OS ID
OS_ID=$(grep -w "ID" /etc/os-release | cut -d= -f2 | tr -d '"')

# Load the corresponding bash configuration
if [[ "$OS_ID" == "ubuntu" || "$OS_ID" == "pop" ]]; then
    source ~/dotfiles/.ubuntu_bashrc
elif [[ "$OS_ID" == "void" ]]; then
    source ~/dotfiles/.void_bashrc
else
    echo "No specific bashrc found for OS: $OS_ID"
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
