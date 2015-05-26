#!/bin/sh

git submodule init
git submodule update


ln -s ~/dotfiles/xinitrc ~/.xinitrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitmessage ~/.gitmessage
ln -s ~/dotfiles/config.fish ~/.config/fish/config.fish
ln -s ~/dotfiles/php_cs ~/.php_cs
ln -s ~/dotfiles/lighthouse ~/.config/
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/zprofile ~/.zprofile
ln -s ~/dotfiles/zpreztorc ~/.zpreztorc
ln -s ~/dotfiles/.urxvt/ ~
ln -s ~/dotfiles/xresources/Xresources ~/.Xresources
