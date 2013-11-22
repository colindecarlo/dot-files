" start pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" Source the vimrc after saving it
autocmd bufwritepost .vimrc source $MYVIMRC

" Set the <Leader> for combo commands
let mapleader = ","

" I don't need no stinking error bells
set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

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
set statusline=%(%h\ %f\ %m%r\ %y\ %{fugitive#statusline()}%)%=%(%c\ %l/%L\ %p%%%)

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
nnoremap <Leader>s :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>

" resize windows
nnoremap <silent> + <C-w>+
nnoremap <silent> - <C-w>-
nnoremap <silent> > <C-w>>
nnoremap <silent> < <C-w><

" muck with some bindings so tmux, vim and commandT play nice
set ttimeoutlen=50

if &term =~ "xterm" || &term =~ "screen"
	let g:CommandTCancelMap = ['<ESC>', '<C-c>']
	let g:CommandTSelectNextMap = ['<C-n>', '<C-j>', '<ESC>OB']
	let g:CommandTSelectPrevMap = ['<C-p>', '<C-k>', '<ESC>OA']
endif

" awesome colorscheme
set background=dark
colorscheme solarized

" add syntax highlighting for less
au BufNewFile,BufRead *.less set filetype=less

" NERD_tree
map <F7> :NERDTreeToggle<CR>
set clipboard=unnamed

" Vdebug options
let g:vdebug_options = {
			\  'path_maps': {'/mnt/hgfs/Users/colin/development/fb': '/Users/colin/development/fb', '/mnt/host/personal': '/Users/colin/development/personal'},
			\  'server': '0.0.0.0',
			\  'idekey': 'XDEBUG_VIM',
			\}

" CTags
" Generate ctags
map <Leader>rt :!ctags --extra=+f -R *<CR><CR>

" Go to the next tag.
map <C-\> :tnext<CR>

" CTags
let tlist_php_settings = 'php;c:class;d:constant;f:function'

" fugitive stuff
map <Leader>gs :Gstatus<CR>

" twig syntax highlighting
au BufRead,BufNewFile *.twig set filetype=htmljinja
