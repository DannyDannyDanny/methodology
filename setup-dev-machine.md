# Mac

Use `brew bundle` to automatically download and install software from your `brewfile`.

### `brewfile`
```
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/core"

brew "flake8"
brew "handbrake"
brew "mas"
brew "pre-commit"
brew "tree"

cask "clickup"
cask "discord"
cask "disk-inventory-x"
cask "docker"
cask "firefox"
cask "iterm2"
cask "rekordbox"
cask "shiftit"
cask "telegram"
cask "visual-studio-code"
cask "vlc"
```

### `.vimrc`

* [Python x Vim](https://realpython.com/vim-and-python-a-match-made-in-heaven/)
* [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start)
* [Vim bindings](https://stackoverflow.com/a/5400978/5684214)


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

### `.zshrc`

During zsh setup, a `.zhrc` file is generated and left in the root.
The following .zshrc content should extend (rather than replace) your `.zshrc`.

```bash
alias doco="docker-compose"

# use vim bindings
bindkey -v
```

# Linux

> Coming Soon
