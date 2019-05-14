call plug#begin('~/.vim/plugged')

" Basic
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'

" Start screen
Plug 'mhinz/vim-startify'
    " Remove cowsay
    let g:startify_custom_header =[]

" Fuzzy search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Footer
Plug 'itchyny/lightline.vim'

" Explorer
Plug 'scrooloose/nerdtree'
    " Display hidden files
    let NERDTreeShowHidden=1

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Plug 'mattn/emmet-vim'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'tpope/vim-eunuch'
" Plug 'tpope/vim-surround'

call plug#end()
