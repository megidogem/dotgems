# Como me abras nano te desheredo ordenador tonto
export EDITOR=vim

PS1='\[\e[38;5;212;1m\]\u\[\e[39m\]@\[\e[94m\]\H\[\e[39m\]:\w\n\$\[\e[0m\] '

# Ignore duplicates and commands starting with spaces
export HISTCONTROL=ignoreboth
# Increase history size
export HISTSIZE=10000
export HISTFILESIZE=20000
# Append to history instead of overwriting
shopt -s histappend

alias nix-gc='sudo nix-collect-garbage -d'  # Clean up Nix store
alias nyx='cd /etc/nixos/'
alias rebuild='sudo nixos-rebuild switch'
alias upgrade='sudo nixos-rebuild switch --upgrade'

alias ff='fastfetch'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias df='df -h'  # Human-readable disk space
alias du='du -h'  # Human-readable directory sizes
alias free='free -h'  # Human-readable memory usage

alias rm='rm -i'  # Confirm before deleting
alias cp='cp -i'  # Confirm before overwriting
alias mv='mv -i'  # Confirm before moving

alias ls='eza --icons=always'
alias ll='ls -la'

alias grep='grep --color=auto'

alias btop='btop -u 100'

#####

fastfetch --config examples/8
