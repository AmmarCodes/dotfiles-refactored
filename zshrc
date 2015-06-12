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
export PATH=$PATH:/$HOME/.composer/vendor/bin:.vendor/bin/:.:~/.gem/ruby/2.2.0/bin:~/dotfiles/bin/:

# Editor
export EDITOR=nvim

# Base16 Shell
# BASE16_SHELL="$HOME/dotfiles/base16-shell/base16-eighties.dark.sh"
# [[ -s $BASE16_SHELL ]] && source $BASE16_SHELL
