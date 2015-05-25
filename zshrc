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
source "$HOME/dotfiles/aliases.zsh"

# PATH
export PATH=$PATH:/$HOME/.composer/vendor/bin:.vendor/bin/:.
