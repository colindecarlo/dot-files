" Source the vimrc after saving it
autocmd bufwritepost .vimrc source $MYVIMRC

" Set the <Leader> for combo commands
let mapleader = ","

" paste toggling
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" command-t stuff
let g:CommandTMaxHeight = 10

" switch between panes quickly
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

set number
nnoremap <F6> :set nonumber!<CR>

" Enable loading filetype and indentation plugins
filetype plugin on
filetype indent on

" Turn syntax highlighting on
syntax on

" Insert mode completion options
set completeopt=menu,longest,preview

" Use UTF-8 as the default buffer encoding
set enc=utf-8

" Remember up to 100 'colon' commmands and search patterns
set history=100

" Enable incremental search
set incsearch

" set the status line
set statusline=%(%h\ %f\ %m%r\ %y\ %{fugitive#statusline()}%)%=%(%l/%L\ %p%%%)

" Always show status line, even for one window
set laststatus=2

" Jump to matching bracket for 2/10th of a second (works with showmatch)
set matchtime=2

" Don't highlight results of a search
set nohlsearch

" use case insensitive searches
set ignorecase

" Enable CTRL-A/CTRL-X to work on octal and hex numbers, as well as characters
set nrformats=octal,hex,alpha

" Scroll when cursor gets within 10 characters of top/bottom edge
set scrolloff=10

" set up whitespace so a I can sees it
set listchars=tab:▸\ ,eol:¬,trail:·

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" When a bracket is inserted, briefly jump to a matching one
set showmatch

" Use menu to show command-line completion (in 'full' case)
set wildmenu

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full

" reselect block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" search and replace the word under the cursor
:nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" awesome colorscheme
colorscheme xoria256
