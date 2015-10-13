filetype plugin indent on
call plug#begin('~/.vim/plugged')
   " Make sure you use single quotes
   Plug 'junegunn/seoul256.vim'
   Plug 'junegunn/vim-easy-align'

   " Group dependencies, vim-snippets depends on ultisnips
   Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

   " On-demand loading
   Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
   Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

   " Using git URL
   Plug 'https://github.com/junegunn/vim-github-dashboard.git'

   " Plugin options
   Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

   " Plugin outside ~/.vim/plugged with post-update hook
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

   " Unmanaged plugin (manually installed and updated)
   Plug '~/my-prototype-plugin'

   Plug 'fatih/vim-go'

call plug#end()
set nu
	
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab
" lets you delete over the end of a line
set backspace=indent,eol,start
if &t_Co > 2 || has("gui_running")    
	" attempts to allow the x clipboard and the vim clipboard to work
        set clipboard=unnamedplus
endif

:let mapleader = ","
:nnoremap <leader>ev :split $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" surrounding with quotes and stuff
:nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
:nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel
:vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`>
:vnoremap <leader>( <esc>`>a"<esc>`<i"<esc>`>

" moving around with windows and stuff
:nnoremap <C-J> <C-W><C-J>
:nnoremap <C-K> <C-W><C-K>
:nnoremap <C-L> <C-W><C-L>
:nnoremap <C-H> <C-W><C-H>

