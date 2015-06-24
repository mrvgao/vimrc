filetype off                  " required
set nocompatible              " be iMproved, required
set smartcase
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
"" Git plugin not hosted on GitHub
"" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
""Plugin 'user/L9', {'name': 'newL9'}
"
"" All of your Plugins must be added before the following line
Plugin 'Valloric/YouCompleteMe'
 
" Add plugin UltiSnip 2015-3-31
" Plugin 'SirVer/ultisnips'
Plugin 'ervandew/supertab'
Plugin 'othree/html5.vim'
Plugin 'amoffat/snake'

call vundle#end()            " required
filetype plugin indent on    " required
"" To ignore plugin indent changes, instead use:
" "filetype plugin on
" "
" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" " :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" "auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line
"
set backspace=2		" more powerful backspci
"
"
set history=100
set ruler
set nu
syntax on
set hlsearch
"
colorscheme desert
"colorscheme molokai
"
"" set the one tab is 2 space
set autoindent
"
set tabstop=4
	
set shiftwidth=4
set softtabstop=4
	
"
"set expandtab
abbr imp import
"autocmd BufRead *.py nmap <F10> :!python %<CR>
"
onoremap " i"
""onoremap b /return<CR>:noh<CR>O
""Mon Aug 11 10:50:51 CST 2014
""Add new python hightlight
"
""Fri Aug 22 16:38:08 CST 2014
""when in noremap mode input HN to dispear the hightlight search
"
""Fri Aug 22 22:37:14 CST 2014
""added change buffer in ls
"nnoremap <silent> [b :bprevious<CR>
"nnoremap <silent> ]b :bnext<CR>
"nnoremap <silent> [B :bfirst<CR>
"nnoremap <silent> ]B :blast<CR>
cmap W w
""Sun Aug 24 22:15:47 CST 2014
""set plugin 'netrw' on
"set nocompatible
"
""set plugin math it on
""Tue Aug 26 00:20:40 CST 2014
"runtime macros/matchit.vim
"
""Fri Aug 29 00:00:07 CST 2014
""set case sensetive
"set ignorecase
"
"nnoremap <silent> ~V :!vim ~/.vimrc<CR>
"
"
""Wed Sep  3 15:38:07 CST 2014
""set scrollbind
""
"" Change the !python to !P in command model
"cnoremap XX X
"cnoremap X x
"" Added to added a new function with Mac-Command
"
"" Added the python script to customize the vim
""Add in:Wed Oct 15 17:01:04 CST 2014
"noremap <silent> _t :call InsertTime()<CR>
""Insert Time End
"
"
""added in 2014-10-15 22:44:00.667713
""to build added two functions that could move the line wich <c-j> and <c-k>
"
""Liner Changer Finished!
"
""Let Vim support mark syntax
"
"au BufRead,BufNewFile *.md set filetype=markdown
"au BufRead,BufNewFile *.py cmap PP !python %
"" au BufRead,BufNewFile *.py imap <Space><Space> mz<Esc>^i# <Esc>``zi
"" au BufRead,BufNewFile *.py nmap <Space><Space> mz^i# <Esc>``z
"au BufRead,BufNewFile *.md cmap om w<CR>:!markdown2 % > %.html<CR>:!open %.html<CR>
"au BufRead,BufNewFile *.swift cmap PP !xcrun swift %
""Add in:2014-10-16 11:33:59.425685
""i
""
""In order to add the plugin
"filetype plugin indent on
"
"
""Added in 2014-11-13
""inoremap <c-a> <esc>$a
""inoremap <c-i> <esc>^i
"au BufRead,BufNewFile *.java inoremap  Sp System.out.println("");<Esc><Left><Left>i
au BufRead,BufNewFile *.html setfiletype htmldjango
"
"" add at 2014 11-17 12:07 
"" To close the complete windows after complete
"" If you prefer the Omni-Completion tip window to close when a selection is
"" " made, these lines close it on movement in insert mode or when leaving
"" " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"
"" set foldmethod
"
"set foldmethod=indent
"
cmap WW w !sudo tee %
"
""set pathogen
"execute pathogen#infect()
"" Now that plugins you wish to install can be extracted to a subdirectory
"" under ~/.vim/bundle, and they will be added to the 'runtimepath'
"
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
"
let mapleader=","
""
"set showcmd
"" to show pre-command in botto
""
"let mapleader = "\<Space>"
"" copy & paste to system clipboard with <Space>p and <Space>y;
"vmap <Leader>y "+y
"vmap <Leader>d "+d
"nmap <Leader>p "+p
"nmap <Leader>P "+P
"vmap <Leader>p "+p
"vmap <Leader>P "+P
"

"add in 2015-3-24 to import url

nmap dgurl ifrom django.conf.urls import patterns, url <esc>ofrom polls import views <CR><CR>urlpatterns = patterns('', <CR>url(r'^$', views.index, name='index'), <CR>)<esc><<<<k<<

let g:netrw_liststyle=3

" to let pathogen worok

execute pathogen#infect()
syntax on

" enable the python-mode plguin
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" enable snip

" some map to jump between relative dajngo files easier
nnoremap \m :call RelatedFile ("models.py")<cr>
nnoremap \v :call RelatedFile ("views.py")<cr>
nnoremap \u :call RelatedFile ("urls.py")<cr>
nnoremap \a :call RelatedFile ("admin.py")<cr>
nnoremap \5 :call RelatedFile ("tests.py")<cr>
nnoremap \t :call RelatedFile ( "templates/" )<cr>
nnoremap \7 :call RelatedFile ( "templatetags/" )<cr>
nnoremap \8 :call RelatedFile ( "management/" )<cr>
nnoremap \s :e settings.py<cr>
nnoremap \9 :e urls.py<cr>

fun! RelatedFile(file)
	" This is to check that directory looks djangoish
	if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
		exec "edit %:h/" . a:file
		let g:last_relative_dir = expand("%:h") . '/'
		return ''
	endif
	if g:last_relative_dir != ''
		exec "edit " . g:last_relative_dir . a:file
		return ''
	endif
	echo "Cant determine where relative file is : " . a:file
	return ''
endfun


fun SetAppDir()
	if filereadable(expand("%:h"). '/models.py') || isdirectory(expand("%:h") . "/templatetags/")
		let g:last_relative_dir = expand("%:h") . '/'
		return ''
	endif
endfun
autocmd BufEnter *.py call SetAppDir()

"""""""""""" end

let g:pymode_rope = 0
" set py-mode
"

autocmd Filetype gitcommit setlocal spell textwidth=72
