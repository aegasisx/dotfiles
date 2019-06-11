call plug#begin('~/.vim/plugged')

" Basic
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'w0rp/ale'
Plug '907th/vim-auto-save'
Plug 'taohexxx/lightline-buffer'

" Start screen
Plug 'mhinz/vim-startify'
    let g:startify_custom_header =[] " Remove cowsay

" Workspace
" Plug 'thaerkh/vim-workspace'
"    let g:workspace_session_directory = $HOME.'/.vim/sessions/'
"    let g:workspace_autosave = 0 " autosave off
"    let g:workspace_autosave_untrailspaces = 0 " no remove trailing space

" Fuzzy search
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Footer
Plug 'itchyny/lightline.vim'
    let g:lightline = {
                \ 'colorscheme': 'powerline',
                \ 'active': {
                \   'left': [ [ 'mode', 'paste'  ],
                \             [ 'readonly', 'filename', 'modified', 'fugitive'  ] ]
                \ },
                \ 'component_function': {
                \   'fugitive': 'LightlineFugitive'
                \ },
                \ }

" Explorer
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
    let NERDTreeShowHidden=1 " Display hidden files

function! LightlineFugitive()
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
        return fugitive#head()
    else
        return '?'
    endif
endfunction

call plug#end()
