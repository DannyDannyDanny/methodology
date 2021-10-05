# Mac

Use `brew bundle` to automatically download and install software from your `brewfile`.

### `brewfile`
```
tap "homebrew/cask"
brew "tree"
brew "mas"
brew "handbrake"

cask "firefox"
cask "iterm2"
cask "telegram"
cask "shiftit"
cask "docker"
cask "vlc"
cask "disk-inventory-x"
cask "rekordbox"
cask "clickup"
cask "visual-studio-code"
```

### `.vimrc`

https://github.com/VundleVim/Vundle.vim#quick-start
```
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'

" remeber to call `:PluginInstall` after changing

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
```

# Linux

> Coming Soon
