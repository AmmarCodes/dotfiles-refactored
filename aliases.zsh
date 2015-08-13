# NeoVim
alias vim="nvim"
alias vi="nvim"

# Tmux
alias tmux="tmux -2"

# Vagrant
alias vu='vagrant up'
alias vs='vagrant ssh'
alias vh='vagrant halt'
alias vss='vagrant status'

## Git
alias gst="git status -s"
alias ga="git add"
alias gg="git log --oneline --graph --decorate --color"
unalias gd
alias gd="git diff"

## Zshmarks
alias g="jump"
alias s="bookmark"
alias d="deletemark"
alias p="showmarks"
alias l="showmarks"

# Find files
f() {
    ag --smart-case --hidden -g $1
}
