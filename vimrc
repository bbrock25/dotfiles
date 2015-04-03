execute pathogen#infect()
execute pathogen#helptags()

let mapleader= ","
set t_Co=256
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" hightlight col and line
set cursorline

let g:mustache_abbreviations = 1

set nocp                    " 'compatible' is not set
filetype plugin on          " plugins are enabled

filetype on
set autoindent

syntax enable
colorscheme flattown

imap <C-c> <CR><Esc>O
imap jj <Esc>

au FileType javascript call JavaScriptFold()
set backspace=indent,eol,start
set rnu

autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\%d8242/'/ge
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\%d166/|/ge
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\%d8722/-/ge

nnoremap <F5> :buffers<CR>:buffer<Space>
set pastetoggle=<F2>

let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 50
let g:netrw_list_hide = '.*\.swp$,'
let g:netrw_list_hide .= '\.DS_Store$,'
let g:netrw_list_hide .= '\.keep$,'

:highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
:match ExtraWhitespace /\s\+$/
