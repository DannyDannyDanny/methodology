" TODO:
" Switch to vim-plug
" [Vim bindings](https://stackoverflow.com/a/5400978/5684214)

" Tested on Ubuntu 21.04 with VIM - Vi IMproved 8.2
set nocompatible              " be iMproved, required
filetype off                  " required

" set runtime path and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'		" https://dev.to/iggredible/working-with-vim-and-git-4nkh
Plugin 'editorconfig/editorconfig-vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'rrethy/vim-illuminate'  	" highlight other uses of the current word under the cursor
Plugin 'mileszs/ack.vim'  		    " grep-like source code search tool
Bundle 'Valloric/YouCompleteMe'
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
python3 << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

let python_highlight_all=1
syntax on

set backspace=indent,eol,start  " more powerful backspacing
set nu  			" line numbers
set clipboard=unnamed  		" set clipboard

" Set splits
set splitbelow
set splitright

" increase vim-gitgutter update time (also vim swp update time)
" https://github.com/airblade/vim-gitgutter
set updatetime=100
