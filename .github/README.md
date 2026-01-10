# Installation
- `git clone --bare git@github.com:illjya/.dotfiles.git "$HOME/.dotfiles"`
- `git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME config status.showUntrackedFiles no`
- `git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME pull`

## Zsh
- `mkdir -p $HOME/.config/zsh/plugins`
- `git clone https://github.com/hlissner/zsh-autopair $HOME/.config/zsh/plugins/zsh-autopair`
- `git clone git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.config/zsh/plugins`
- `git clone https://github.com/kutsan/zsh-system-clipboard.git $HOME/.config/zsh/plugins`
  - `sudo pacman -S xclip`

## Vi
- `sudo pacman -S fzf ripgrep`
- `vi`
  - `:PlugUpgrade`
  - `:PlugUpdate`
  - `:PlugInstall`

### Install [lsp servers](https://wiki.archlinux.org/title/Language_Server_Protocol)
```
sudo pacman -S \
  python-lsp-server \
  lua-language-server  \
  typescript-language-server \
  vscode-html-languageserver \
  vscode-css-languageserver \
  vscode-json-languageserver
```

## Shell

 - [nvimserver](https://github.com/illjya/nvimserver)

## Desktop entries

 - `/usr/share/applications/ranger.desktop`
  ```
  [Desktop Entry]
  Type=Application
  Name=ranger
  Comment=Launches the ranger file manager
  Icon=utilities-terminal
  Terminal=false
  Exec=alacritty --class ranger -e ranger
  Categories=ConsoleOnly;System;FileTools;FileManager
  MimeType=inode/directory;
  Keywords=File;Manager;Browser;Explorer;Launcher;Vi;Vim;Python
  ```

