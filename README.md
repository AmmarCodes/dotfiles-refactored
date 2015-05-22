# dotfiles-refactored

A refactored version of my dotfiles, don't overwrite any files/folders.

## Features

- [ ] list of packages to install
- [ ] ability to save the background image
- [ ] ability to save files inside multi-level folders
- [ ] choose what to copy/link from dotfiles into home

## Setup

### Programs

#### Base

- git
- fish
- openssh
- tmux

#### Misc
- google-chrome
- skype
- uget
- scudcloud (Slack linux client)

#### Development

- Sublime
- Vim
- NodeJS (with npm)
- PHP, Composer and MariaDB `sudo pacman -S php php-composer php-mcrypt php-pear php-sqlite mariadb`, install mariadb by `sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql`, then `mysql_secure_installation`.

### Additional Config

#### PHP

- Enable extensions by editing `/etc/php/php.ini`: curl, mysqli, posix, pdo_mysql, pdo_sqlite, openssl.
- Enter default date timezone in `/etc/php/php.ini`; `Asia/Damascus`.

#### VIM
- Create the following dirs: `~/.vim/backups`, `~/.vim/undo`, `~/.vim/swaps`.
- [Vimplug](https://github.com/junegunn/vim-plug#usage)

#### SublimeText
- install [package control](https://packagecontrol.io/installation).
- use `advance install` from command palette to install the necessary packages simultantiously: `Emmet, SublimeLinter, SideBarEnhancements, BracketHighlighter, SublimeCodeIntel, AlignTab, AdvancedNewFile, GitGutter, DocBlockr, WordPress, Laravel Blade Highlighter, SublimeLinter-php, Theme - Spaceblack, Theme - Spacegray`.

### Theme & Icons
- [Vertex Icons](https://github.com/horst3180/Vertex-Icons)
- [Arc Theme](https://github.com/horst3180/Arc-theme)

## References


## Files to link
- `~/.vimrc`
- `~/.tmux.conf`
- `~/.Xresources`
- `~/.gitconfig`
- `~/.gitignore`
- `~/.gitmessage`
- `~/.toprc`
- `~/.zshrc`
- `~/.i3/`
- `~/.xinitrc`
- `~/.config/xfce4/terminal/terminalrc`
- `~/.config/fish/config.fish`
- `~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings`
