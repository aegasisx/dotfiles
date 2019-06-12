call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-unimpaired'
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
Plug 'terryma/vim-multiple-cursors'
Plug 'ap/vim-buftabline'
    let g:buftabline_numbers = 2
    let g:buftabline_indicators=1
    nmap <leader>1 <Plug>BufTabLine.Go(1)
    nmap <leader>2 <Plug>BufTabLine.Go(2)
    nmap <leader>3 <Plug>BufTabLine.Go(3)
    nmap <leader>4 <Plug>BufTabLine.Go(4)
    nmap <leader>5 <Plug>BufTabLine.Go(5)
    nmap <leader>6 <Plug>BufTabLine.Go(6)
    nmap <leader>7 <Plug>BufTabLine.Go(7)
    nmap <leader>8 <Plug>BufTabLine.Go(8)
    nmap <leader>9 <Plug>BufTabLine.Go(9)
    nmap <leader>0 <Plug>BufTabLine.Go(10)
Plug 'brooth/far.vim'
    let g:far#window_layout='current'
Plug 'ajh17/VimCompletesMe'
Plug 'mhinz/vim-startify'
    let g:startify_custom_header =[] " Remove cowsay
Plug 'thaerkh/vim-workspace'
    let g:workspace_session_directory = $HOME.'/.vim/sessions/'
    let g:workspace_autosave = 0 " autosave off
    let g:workspace_undodir= $HOME.'/.vim/undo'
    let g:workspace_autosave_untrailspaces = 0 " no remove trailing space
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'itchyny/lightline.vim'
    let g:lightline = {
                \ 'colorscheme': 'powerline',
                \ 'active': {
                \   'left': [ [ 'mode', 'paste'  ],
                \             [ 'readonly', 'fugitive', 'filename', 'modified' ] ]
                \ },
                \ 'component_function': {
                \   'fugitive': 'LightlineFugitive'
                \ },
                \ }

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
    let NERDTreeShowHidden=1 " Display hidden files

function! LightlineFugitive()
    if &ft !~? 'vimfiler\|gundo' && exists('*fugitive#head')
        return fugitive#head()
    else
        return ''
    endif
endfunction

call plug#end()
