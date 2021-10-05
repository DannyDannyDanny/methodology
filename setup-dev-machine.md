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
# cask "karabiner-elements"
```

### `.vimrc`

https://github.com/VundleVim/Vundle.vim#quick-start
```
set nocompatible              " be iMproved, required
filetype off                  " required

" set runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
" Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" remeber to call `:PluginInstall` after changing

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" flag extranous whitespace
" au BufRead,BufNewFile *.py match BadWhitespace /\s\+$/

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on

" Line numbers
set nu

" Set clipboard
set clipboard=unnamed
```

# Linux

> Coming Soon
