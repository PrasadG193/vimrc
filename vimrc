set nocompatible              " be iMproved, required
filetype off                  " required

"----------------------------Plugins---------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
" Plugin 'vim-scripts/taglist.vim'
Bundle 'jistr/vim-nerdtree-tabs'
" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}
"Plugin 'https://github.com/Valloric/YouCompleteMe.git'
"Plugin 'scrooloose/syntastic'
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
"filetype plugin indent on    " required
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

":imap <C-J> <esc>a<Plug>snipMateNextOrTrigger
":smap <C-J> <Plug>snipMateNextOrTrigger
"let g:ycm_global_ycm_extra_conf = '/home/prasad/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"-----------------------------------------------------------------------------------


"display setting 
:syntax on
:set scrolloff=2         " 2 lines above/below cursor when scrolling
:set number              " show line numbers
:set showmatch           " show matching bracket (briefly jump)
:set showmode            " show mode in status bar (insert/replace/...)
:set showcmd             " show typed command in status bar
:set ruler               " show cursor position in status bar
:set title               " show file in titlebar
:set wildmenu            " completion with menu
:set wildignore=*.o,*.obj,*.bak,*.exe,*.py[co],*.swp,*~,*.pyc,.svn
:set laststatus=2        " use 2 lines for the status bar
:set matchtime=2         " show matching bracket for 0.2 seconds
:set matchpairs+=<:>     " specially for html

"editor setting

":set shiftwidth=4
":set softtabstop=4
":autocmd FileType *      set formatoptions=tcql nocindent comments&
":autocmd FileType c,cpp  set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
":set autowrite
:ab #d #define
:ab #i #include
:ab #b /********************************************************
:ab #e ********************************************************/
:ab #l ------------------------------------------------------
":set notextmode
":set notextauto
:set hlsearch
:hi Search term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
:set incsearch
":set cursorline
":hi cursorline cterm=NONE ctermbg=NONE ctermfg=white

"autoclosing
"inoremap {      {}<Left>
"inoremap {<CR>  {<CR>}<Esc>O
"inoremap {{     {
"inoremap {}     {}
"
"inoremap (      ()<Left>
"inoremap (<CR>  (<CR>)<Esc>O
"inoremap ((     (
"inoremap ()     ()

":autocmd bufnewfile *.c so /home/prasad/header.txt
":autocmd bufnewfile *.cpp so /home/prasad/header.txt

"gcc
":set cindent
":set cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
":set shiftwidth=2
":set softtabstop=2
":set textwidth=79
":set fo-=ro fo+=cql

:map <C-n> :NERDTreeToggle<CR>
:let g:NERDTreeDirArrowExpandable = '▸'
:let g:NERDTreeDirArrowCollapsible = '▾'
:let g:airline_theme='luna'

"ctags
:map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

":autocmd FileType java set tags=~/.tags

"ycm
:filetype plugin on

"ColorColumn
:set colorcolumn=80

"Highlight changes
:hi DiffChange     term=bold ctermbg=255 ctermfg=0 guibg=LightMagenta
:hi DiffText       term=reverse cterm=bold ctermfg=0 ctermbg=9 gui=bold guibg=Red
:hi DiffAdd        term=bold ctermfg=0 ctermbg=81 guibg=LightBlue
:hi colorcolumn    term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
