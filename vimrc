set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'

Plugin 'thoughtbot/vim-rspec'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

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

"Spec.vim mapping
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

