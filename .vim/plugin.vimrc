call plug#begin('~/.vim/plugged')

" Basic
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'editorconfig/editorconfig-vim'
Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'ludovicchabant/vim-gutentags'
Plug 'tpope/vim-eunuch'

" Start screen
Plug 'mhinz/vim-startify'
    let g:startify_custom_header =[] " Remove cowsay


" Workspace
Plug 'thaerkh/vim-workspace'
    let g:workspace_session_directory = $HOME . '/.vim/sessions/'
    let g:workspace_autosave_always = 1 " autosave on
    let g:workspace_autosave_untrailspaces = 0 " no remove trailing space

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
" Plug 'tpope/vim-surround'

call plug#end()
