#!/bin/sh

git submodule init
git submodule update

mkdir ~/.vim
mkdir ~/.nvim

mkdir ~/.vim/swaps
mkdir ~/.nvim/swaps

mkdir ~/.vim/backups
mkdir ~/.nvim/backups

mkdir ~/.vim/undo
mkdir ~/.nvim/undo

mkdir ~/.config/dunst
mkdir ~/.config/glances

mkdir ~/.config/bspwm
mkdir ~/.config/sxhkd

ln -s ~/dotfiles/xinitrc ~/.xinitrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/nvimrc ~/.nvimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitmessage ~/.gitmessage
ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish
ln -s ~/dotfiles/php_cs ~/.php_cs
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/zprofile ~/.zprofile
ln -s ~/dotfiles/zpreztorc ~/.zpreztorc
ln -s ~/dotfiles/.urxvt/ ~
ln -s ~/dotfiles/gtkrc ~/.gtkrc-2.0
ln -s ~/dotfiles/i3/config ~/.config/i3/config
ln -s ~/dotfiles/dunst/dunstrc ~/.config/dunst/dunstrc
ln -s ~/dotfiles/glances.conf ~/.config/glances/glances.conf
ln -s ~/dotfiles/.compton.conf ~/.compton.conf
ln -s ~/dotfiles/i3blocks.conf ~/.i3blocks.conf
ln -s ~/dotfiles/stalonetrayrc ~/.stalonetrayrc
ln -s ~/dotfiles/xresources/Xresources ~/.Xresources
ln -s ~/dotfiles/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings
ln -s ~/dotfiles/bspwmrc ~/.config/bspwm/bspwmrc
ln -s ~/dotfiles/sxhkdrc ~/.config/sxhkd/sxhkdrc
ln -s ~/dotfiles/redshift.conf ~/.config/redshift.conf
ln -s ~/dotfiles/ssh_config ~/.ssh/config
ln -s ~/dotfiles/npmrc ~/.npmrc
