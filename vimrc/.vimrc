set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'toyamarinyon/vim-swift'
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
 "filetype plugin on
 "
 " Brief help
 " :PluginList       - lists configured plugins
 " :PluginInstall    - installs plugins; append `!` to update or just
 " :PluginUpdate
 " :PluginSearch foo - searches for foo; append `!` to refresh local cache
 " :PluginClean      - confirms removal of unused plugins; append `!` to
 "auto-approve removal
 "
 " see :h vundle for more details or wiki for FAQ
 " Put your non-Plugin stuff after this line

set backspace=2		" more powerful backspci

"kk Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup

set history=100
set ruler
set nu
syntax on
set hlsearch

"colorscheme desert
colorscheme desert

" set the one tab is 2 space
"set autoindent

set autoindent

set tabstop=2
set shiftwidth=2
set softtabstop=2

set expandtab

" set tab end

" set the fold command

set incsearch "jump to search words as you type

"set dedesddwadawddddtionary
set dictionary+=/usr/share/dict/words

"set the jk to dispear the high light search 

"add abbr

abbr imp import
abbr rm random
abbr rmi randint
autocmd BufRead *.py nmap <F10> :!python %<CR>

inoremap  Sp System.out.println("");<Esc><Left><Left>i


"set map mode
nnoremap <C-\> <Esc>
vnoremap <C-\> <Esc>gV
inoremap <C-\> <Esc>`^
onoremap <C-\> <Esc>
"Set the atl + h == right arrow
inoremap ˙ <Left>
inoremap ¬ <Right>
onoremap p i(
onoremap m i{
onoremap ' i'
onoremap " i"
"onoremap b /return<CR>:noh<CR>O
"Mon Aug 11 10:50:51 CST 2014
"Add new python hightlight

"Fri Aug 22 16:38:08 CST 2014
"when in noremap mode input HN to dispear the hightlight search

"Fri Aug 22 22:37:14 CST 2014
"added change buffer in ls
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
cmap W w
"Sun Aug 24 22:15:47 CST 2014
"set plugin 'netrw' on
set nocompatible
filetype plugin on

"set plugin math it on
"Tue Aug 26 00:20:40 CST 2014
runtime macros/matchit.vim

"Fri Aug 29 00:00:07 CST 2014
"set case sensetive
set ignorecase
set smartcase

nnoremap <silent> ~V :!vim ~/.vimrc<CR>


"Wed Sep  3 15:38:07 CST 2014
"set scrollbind
"
" Change the !python to !P in command model
cnoremap PF Python %
cnoremap XX X
cnoremap X x
" Added to added a new function with Mac-Command

" Added the python script to customize the vim
"Add in:Wed Oct 15 17:01:04 CST 2014
function! InsertTime()
python << pythonEnd
import random
import vim
import datetime
vim.current.buffer.append(str(datetime.datetime.now()).rstrip())
pythonEnd
endfunction
nnoremap <silent> _t :call InsertTime()<CR>
"Insert Time End


"added in 2014-10-15 22:44:00.667713
"to build added two functions that could move the line wich <c-j> and <c-k>

"Liner Changer Finished!

"Let Vim support mark syntax

au BufRead,BufNewFile *.md set filetype=markdown
au BufRead,BufNewFile *.py cmap PP !python %
au BufRead,BufNewFile *.md cmap om w<CR>:!markdown2 % > %.html<CR>:!open %.html<CR>
au BufRead,BufNewFile *.swift cmap PP !xcrun swift %
"Add in:2014-10-16 11:33:59.425685
"i
"
"In order to add the plugin
filetype plugin indent on


"Added in 2014-11-13
inoremap <c-e> <esc>$a
inoremap <c-a> <esc>^i
