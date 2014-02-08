set nocompatible
set encoding=utf-8

" vundle configs
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

filetype plugin indent on

" vundle bundles
Bundle 'altercation/vim-colors-solarized'
Bundle 'Townk/vim-autoclose'
Bundle 'Lokaltog/vim-powerline'

" vim-powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2
set textwidth=0

" add line numbers
set number
set ruler

" whitespace
set nowrap
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

" disable code folding
set nofoldenable

" indentation
set autoindent

" search
set hlsearch
set incsearch

" syntax
syntax on
set showmatch
set matchpairs+=<:>
syntax sync minlines=200

" colors
set background=dark
colorscheme solarized
set t_Co=256

" scrolling behaviour
set scrolloff=5
set sidescroll=5

" disable mouse
set mouse-=a

" history
set history=200

" command history filtering for <C-p> and <C-n>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" spell checking: toggle sc on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en_gb

" directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" key mappings (move through splitted windows)
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l

" easier increment / decrement
nnoremap + <C-a>
nnoremap - <C-x>

" reselect visual block after indent / outdent
vnoremap < <gv
vnoremap > >gv

" use kj as <Esc> alternative
inoremap kj <Esc>

" make Python follow PEP8 ( http://www.python.org/dev/peps/pep-0008/ )
au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

" treat sage and cython like python
autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
" autocmd FileType python set makeprg=sage\ -b\ &&\ sage\ -t\ %

" tex
autocmd FileType tex set makeprg=pdflatex\ %
let g:tex_flavor='latex'

" gqip formats a paragraph using par (80 columns)
set formatprg=par\ -w80

" strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" OS X
if has("unix")
  if system("uname") == "Darwin\n"
    " copy to and from system clipboard
    set clipboard=unnamed
    " yank text to clipboard
    noremap <leader>y "*y
    noremap <leader>yy "*Y
    " preserve indentation while pasting text from clipboard
    noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
  endif
endif
