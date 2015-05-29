set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'SirVer/ultisnips'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'benmills/vimux'
Plugin 'digitaltoad/vim-jade'
Plugin 'elixir-lang/vim-elixir'
Plugin 'ervandew/supertab'
Plugin 'gmarik/Vundle.vim'
Plugin 'honza/vim-snippets'
Plugin 'jgdavey/tslime.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'slim-template/vim-slim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-surround'
Plugin 'vim-ruby/vim-ruby'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

imap jj <Esc>

set backspace=indent,eol,start
set relativenumber
set number
set clipboard=unnamed

autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\%d8242/'/ge
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\%d166/|/ge
autocmd FileType c,cpp,java,php autocmd BufWritePre <buffer> :%s/\%d8722/-/ge

func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc

autocmd BufWrite *.js* :call DeleteTrailingWS()
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
autocmd BufWrite *.slim :call DeleteTrailingWS()
autocmd BufWrite *.rb :call DeleteTrailingWS()

nnoremap <F5> :buffers<CR>:buffer<Space>
set pastetoggle=<F2>

"Spec.vim mapping
let g:rspec_command = 'call Send_to_Tmux("./newton bundle exec rspec {spec}\n")'
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden=1
map <C-n> :NERDTreeToggle<CR>

let NERDTreeIgnore=['\.DS_Store$', '\.vim$', '\.keep$']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDCommenter
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"todo


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnips 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" make YCM compatible with UltiSnips (using supertab)
 let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
 let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
 let g:SuperTabDefaultCompletionType = '<C-n>'

 " better key bindings for UltiSnipsExpandTrigger
 let g:UltiSnipsExpandTrigger = "<tab>"
 let g:UltiSnipsJumpForwardTrigger = "<tab>"
 let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlP & ag settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimux mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 map <Leader>vl :VimuxRunLastCommand<CR>
 map <Leader>vq :VimuxCloseRunner<CR>
