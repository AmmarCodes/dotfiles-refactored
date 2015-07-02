# dotfiles-refactored

A refactored version of my dotfiles, don't overwrite any files/folders. Currently running i3-gaps.

![Clean Desktop](https://i.imgur.com/IN9AcJ5.png)
[More screenshots](https://imgur.com/gallery/eqG9N/).

## Key bindings

Other than default i3 key bindings, There's:

- `$mod`+`tab`: switch workspaces
- `alt`+`tab`: focus next panel
- `alt`+`shift`+`tab`: focus previous panel
- `$mod`+`shift`+`F11`: toggle compton opacity
- `alt`+`ctrl`+`L`: lock the screen (using slimlock)
- `$mod`+`shift`+`y`: rename workspace

## Setup

### Programs

#### Base

- git
- zsh, with [prezto](https://github.com/sorin-ionescu/prezto).
- openssh
- tmux
- i3-gaps-git lemonbar-xft-git dmenu2 dunst compton feh acpi sysstat
- python-pip
- bspwm vnstat sres-git pamixer sxhkd xtitle conky dzen2 unclutter wmname pnmixer wmctrl slop maim-git

#### Misc
- google-chrome
- skype
- uget
- scudcloud (Slack linux client)
- wmctrl

#### Appearance
- otf-fira-code-git
- siji-git
- gohufont
- arc-gtk-theme-git
- powerline-fonts-git

#### Development

- Sublime
- Vim / NeoVim
- NodeJS (with npm)
- PHP, Composer and MariaDB `sudo pacman -S php php-composer php-mcrypt php-pear php-sqlite mariadb`, install mariadb by `sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql`, then `mysql_secure_installation`.
- `sudo pacman -S the_silver_searcher ctags`

### Additional Config

#### PHP

- Enable extensions by editing `/etc/php/php.ini`: curl, mysqli, posix, pdo_mysql, pdo_sqlite, sqlite3, openssl.
- Enter default date timezone in `/etc/php/php.ini`; `Asia/Damascus`.

#### VIM
- [Vimplug](https://github.com/junegunn/vim-plug#usage)

#### SublimeText
- install [package control](https://packagecontrol.io/installation).
- use `advance install` from command palette to install the necessary packages simultantiously: `Emmet, SublimeLinter, SideBarEnhancements, BracketHighlighter, SublimeCodeIntel, AlignTab, AdvancedNewFile, GitGutter, DocBlockr, WordPress, Laravel Blade Highlighter, SublimeLinter-php, Theme - Spaceblack, Theme - Spacegray`.

#### Others
- add key binding for `lighthouse | sh`, e.g. `Alt + R`

### Theme & Icons
- [Vertex Icons](https://github.com/horst3180/Vertex-Icons)
- [Arc Theme](https://github.com/horst3180/Arc-theme)


