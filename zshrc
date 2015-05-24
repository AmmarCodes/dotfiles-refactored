#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Plugins
source "$HOME/dotfiles/zsh-plugins/zsh-notify/notify.plugin.zsh"
source "$HOME/dotfiles/zsh-plugins/zshmarks/zshmarks.plugin.zsh"

# Aliases
## git
alias gst="git status -s"
alias ga="git add"
## zshmarks

alias g="jump"
alias s="bookmark"
alias d="deletemark"
alias p="showmarks"
alias l="showmarks"
