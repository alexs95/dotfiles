set nocompatible

" Load plugins
so ~/.vim/plugins.vim

" GUI
syntax enable
set background=dark
colorscheme material-theme
set guifont=Source\ Code\ Pro
set linespace=13
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=e
set guioptions-=m
set guioptions-=T

" Always display status line
set laststatus=2

" Display ruler (line, column, percentage in status bar)
set ruler

" Proper backspacing
set backspace=indent,eol,start

" Auto save files when focus is lost
set autowriteall

" Line length 100 marker
set colorcolumn=100

" Indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set expandtab

" Line breaks on pressing enter
nmap <S-CR> O<ESC>
nmap <CR> o<ESC>

" Improved search
map <leader><space> :nohlsearch<ESC>
set hlsearch
set incsearch

" Splits
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Auto save and load folds.
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Ctrl F to search selected text in visual mode
vmap <C-F> "Ay<ESC>/<C-R>a<CR>qaq

" Ctrl F to search contents of clipboard in normal mode
nmap <C-F> /<C-R>+<CR>

" Ctrl V to paste in insert mode
imap <C-V> <ESC>"+pi
