set expandtab
set guicursor=
set noshowmatch
"set relativenumber
set nohlsearch
set hidden
set noerrorbells
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"set termguicolors
set scrolloff=8
set clipboard=unnamed

call plug#begin("~/.vim/plugged")
  " Plugin Section
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
" Plug 'scrooloose/nerdtree'
" Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" React and TypeScript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
" Elixir
Plug 'elixir-editors/vim-elixir'
call plug#end()

" Leader key
let mapleader = "\<Space>"
imap jk <esc>
imap kj <esc>

" Set NERDTree hotkey
" map <C-o> :NERDTreeToggle<CR>

" GitGutter mappings
nmap ]c <Plug>GitGutterNextHunk
nmap [c <Plug>GitGutterPrevHunk
nmap <Leader>hs <Plug>GitGutterStageHunk
nmap <Leader>hu <Plug>GitGutterUndoHunk

" Tab mappings
nnoremap <C-T> :tabnew<CR>:e .<CR>
nnoremap <C-P> :tabprev<CR>
nnoremap <C-N> :tabnext<CR>
nnoremap <C-V> :vsplit .<CR>
nnoremap <C-H> :split .<CR>
" nnoremap <C-Q> :q<CR>
nnoremap <Leader>q :q<CR>
"
" Fuzzy Finder
nnoremap , :FZF<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Ignore node-modules with silver-searcher
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
"Map Ctrl-s to write the file
nmap <C-s> :w<cr>

" Split edit your vimrc. Type space, v, r in sequence to trigger
nmap <leader>vr :sp $MYVIMRC<cr>

" Source (reload) your vimrc. Type space, s, o in sequence to trigger
nmap <leader>so :source $MYVIMRC<cr>

" Pre-populate a split command with the current directory
nmap <leader>v :vnew <C-r>=escape(expand("%:p:h"), ' ') . '/'<cr>

" Edit your vimrc in a new tab
nmap <leader>vi :tabedit $MYVIMRC<cr>

" Copy the entire buffer into the system register
nmap <leader>co ggVG*y

" Move up and down by visible lines if current line is wrapped
nmap j gj
nmap k gk

" Command aliases for typoed commands (accidentally holding shift too long)
command! Q q " Bind :Q to :q
command! Qall qall
command! QA qall
command! E e

"Map Ag
nmap <leader>/ :Ag<cr>

" JS Indent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
" C Indent
autocmd FileType c setlocal tabstop=4 softtabstop=4 shiftwidth=4

"Primary selection
vmap <LeftRelease> "*ygv
noremap <leader>y "+y
noremap <leader>Y "*y
noremap <leader>p "+p

set background=light
highlight clear SignColumn

" Trim Whitespace
