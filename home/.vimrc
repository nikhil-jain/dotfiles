set nocompatible
syn on
set backspace=indent,eol,start
set hlsearch
set sw=2
set tabstop=2
set smarttab
set autoindent
set smartindent
set wrap
set formatoptions+=r
set formatoptions+=q
set formatoptions+=t
set formatoptions-=l
set formatoptions+=c
set expandtab
set colorcolumn=81
highlight ColorColumn ctermbg=red
set textwidth=80
set formatoptions+=t
set dictionary=/usr/share/dict/words
set spellfile=~/.mySpellFile.en.utf-8.add
set dictionary+=~/.mySpellFile.en.utf-8.add
set complete+=k
set showmatch
set novb
set noeb
set nu
set background=dark
au BufWinLeave * mkview
filetype on
filetype plugin on
au BufWinEnter * silent loadview
autocmd FileType make set noexpandtab shiftwidth=8 softtabstop=0
autocmd FileType tex setlocal spell
"colorscheme morning
colorscheme default

set nobackup    " do not keep a backup file, use versions instead
set history=50    " keep 50 lines of command line history
set ruler   " show the cursor position all the time
set showcmd   " display incomplete commands
set incsearch   " do incremental searching
set ignorecase
set smartcase
set hlsearch
set modeline
set ls=2
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)

"folding
"set foldmethod=indent
nnoremap <space> za

"save and quit
nnoremap <C-q> :wq<CR><CR>
inoremap <C-q> <Esc>:wq<CR><CR>

"save
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>a

"line wrap
nnoremap <C-a> vipgq
inoremap <C-a> <Esc>vipgqa

"compile
nnoremap <C-c> :w<CR>:!make<CR><CR>
inoremap <C-c> <Esc>:w<CR>:!make<CR>a

