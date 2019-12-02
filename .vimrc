filetype off
filetype plugin indent off
filetype plugin indent on

syntax on
set number
set encoding=utf8
" set colorcolumn=80

" Make * stay at the current word
nnoremap * m`:keepjumps normal! *``<cr>

" Enable mouse in all modes
set mouse="a"

" Vim mappings for moving between splits
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Don't display the intro message on startup
set shortmess+=I

" set cursorline
" set cursorcolumn

" Match new line indentation to previous line
set autoindent
set copyindent

" set shiftround
" set shiftwidth=4

if has('smartindent')
    " Do smart autoindenting when starting a new line
    set smartindent
endif

" Searching
set ignorecase
set smartcase " case sensitive if you include uppercase

if has('extra_search')
    " Highlight matches when searching
    set hlsearch

    " Search incrementally (i.e. start matching immediately)
    set incsearch
endif

" Make 'U' perform a redo operation (a sensible inverse of 'u')
nnoremap U <C-R>

" Make behaviour of 'Y' consistent with 'D' and 'C' (i.e. yank from cursor)
nnoremap Y y$

" Git
" Nice to know where our lines will wrap
autocmd FileType gitcommit set colorcolumn=73

" scroll to show always show some lines and columns around the cursor
set scrolloff=3
set sidescroll=1
set sidescrolloff=15

" persist file undo history across Vim launches
set undofile undodir=$HOME/.vim/undofiles,$HOME/_vim/undofiles

" on wrapped lines, move up and down visually, not logically
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk

" when indenting with < and >, make it easy to repeat
xnoremap < <gv
xnoremap > >gv


