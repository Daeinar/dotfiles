set nocompatible
set encoding=utf-8
let mapleader = ","

" ========== vundle ==========
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Townk/vim-autoclose'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'The-NERD-Commenter'
Plugin 'The-NERD-Tree'
Plugin 'fatih/vim-go'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'rust-lang/rust.vim'
"Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
"Plugin 'tpope/vim-dispatch'
call vundle#end()
filetype plugin indent on

" ========== plugins ==========
 
" vim-powerline
let g:Powerline_symbols = 'fancy'
set laststatus=2

" vim-go
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
"au FileType go nmap <leader>c <Plug>(go-coverage)
 
au FileType go nmap <leader>ds <plug>(go-def-split)
au FileType go nmap <leader>dv <plug>(go-def-vertical)
au FileType go nmap <leader>dt <plug>(go-def-tab)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_dispatch_enabled = 1
let g:go_fmt_command = "goimports"

" NERD-Tree
map <C-n> :NERDTreeToggle<CR>

" ========== misc ==========
" textwidth
set textwidth=0
au Filetype text,tex,md,markdown set textwidth=80

" add line numbers
set number
set ruler

" whitespace
set nowrap
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

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
set t_Co=256
colorscheme solarized

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

" spell checking: toggle on/off with `,s`
nmap <silent> <leader>s :set spell!<CR>
set spelllang=en_us
set spellfile=$HOME/.vim/spell/en.utf-8.add
autocmd BufRead,BufNewFile *.{md,tex} setlocal spell

" directories for swp files
set backupdir=$HOME/.vim/backup
set directory=$HOME/.vim/backup

" more natural splitting
set splitbelow
set splitright
 
" simpler navigation through splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" easier increment / decrement
nnoremap + <C-a>
nnoremap - <C-x>

" reselect visual block after indent / outdent
vnoremap < <gv
vnoremap > >gv

" use kj as <Esc> alternative
inoremap kj <Esc>

" treat sage and cython like python
autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
" autocmd FileType python set makeprg=sage\ -b\ &&\ sage\ -t\ %

" LaTeX
autocmd FileType tex set makeprg=pdflatex\ %
let g:tex_flavor='latex'
autocmd BufRead,BufNewFile *.cls set filetype=tex

" Markdown
let g:vim_markdown_math=1 " LaTeX syntax highlighting support
highlight link mkdmath String

" Golang
"set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow " execute golint (i.e. :Lint) on :w

" Rust
" klet g:rustfmt_autosave = 1

" gqip formats a paragraph using par (80 columns)
set formatprg=par\ -w80

" strip trailing whitespaces on each save
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
" autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

" change textwidth between 0 and 80 chars, with `,tw`
if !exists("*ToggleTextWidth")
    function ToggleTextWidth()
        if &l:textwidth ==# 0
            let &l:textwidth=80
        else
            let &l:textwidth=0
        endif
        echom "textwidth:" &l:textwidth
    endfunction
    nmap <silent> <leader>tw :call ToggleTextWidth()<CR>
endif

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

" get info about highlighting group of element under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

