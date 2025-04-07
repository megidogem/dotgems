if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -u fish_greeting
export EDITOR=vim

# Ignore duplicates and commands starting with spaces
export HISTCONTROL=ignoreboth
# Increase history size
export HISTSIZE=10000
export HISTFILESIZE=20000
# Append to history instead of overwriting

alias nix-search='nix search nixpkgs'  # Search for packages
alias nix-gc='sudo nix-collect-garbage -d'  # Clean up Nix store
alias nix-optimize='sudo nix-store --optimize'  # Optimize Nix store
alias nyx='sudoedit /etc/nixos/configuration.nix'
alias pkgs='sudoedit /etc/nixos/pkgs.nix'
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

alias weather='curl wttr.in'  # Quick weather check
alias ports='ss -tulnp'  # List open ports

alias ls='eza --icons=always'
alias ll='ls -la'
alias grep='grep --color=auto'

alias btop='btop -u 100'

fastfetch --config examples/8

