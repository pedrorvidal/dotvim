set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
" behave mswin
execute pathogen#infect()
" set diffexpr=MyDiff()
" adicionei uma linha

" function MyDiff()
"   let opt = '-a --binary '
"   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"   let arg1 = v:fname_in
"   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"   let arg2 = v:fname_new
"   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"   let arg3 = v:fname_out
"   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"   let eq = ''
"   if $VIMRUNTIME =~ ' '
"     if &sh =~ '\<cmd'
"       let cmd = '""' . $VIMRUNTIME . '\diff"'
"       let eq = '"'
"     else
"       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"     endif
"   else
"     let cmd = $VIMRUNTIME . '\diff'
"   endif
"   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
" endfunction

 " Modeline and Notes {
 "   vim: set foldmarker={,} foldlevel=0 spell:
 "
 "   This is my personal .vimrc, I don't recommend you copy it, just
 "   use the "   pieces you want(and understand!).  When you copy a
 "   .vimrc in its entirety, weird and unexpected things can happen.
 "
 "   If you find an obvious mistake hit me up at:
 "   http://robertmelton.com/contact (many forms of communication)
 " }

set noerrorbells visualbell t_vb=
autocmd GUIEnter * set visualbell t_vb=

" Open each new buffer in a new tab
" :au BufAdd,BufNewFile * nested tab sball

 " Basics {
    "set nocompatible " explicitly get out of vi-compatible mode
    "Pathogen
    " call pathogen#infect()
    " call pathogen#runtime_append_all_bundles()
    " call pathogen#helptags()


     set noexrc " don't use local version of .(g)vimrc, .exrc
     set background=dark " we plan to use a dark background
     set cpoptions=aABceFsmq
     "             |||||||||
     "             ||||||||+-- When joining lines, leave the cursor
     "             |||||||      between joined lines
     "             |||||||+-- When a new match is created (showmatch)
     "             ||||||      pause for .5
     "             ||||||+-- Set buffer options when entering the
     "             |||||      buffer
     "             |||||+-- :write command updates current file name
     "             ||||+-- Automatically add <CR> to the last line
     "             |||      when using :@r
     "             |||+-- Searching continues at the end of the match
     "             ||      at the cursor position
     "             ||+-- A backslash has no special meaning in mappings
     "             |+-- :write updates alternative file name
     "             +-- :read updates alternative file name
     syntax on " syntax highlighting on
 " }

 " General {
     filetype plugin indent on
     if has("autocmd")
         filetype plugin indent on " load filetype plugins/indent settings
     endif
     autocmd FileType php set smartindent
     set smartindent
     set autoindent
     set autochdir " always switch to the current file directory
     set backspace=indent,eol,start " make backspace a more flexible
     "set backup " make backup files
     set nobackup
     set noswapfile
     set nowritebackup
     "set backupdir=~/.vim/backup " where to put backup files
     set clipboard+=unnamed " share windows clipboard
     "set directory=~/.vim/tmp " directory to place swap files in
     set fileformats=unix,dos,mac " support all three, in this order
     set hidden " you can change buffers without saving
     " (XXX: #VIM/tpope warns the line below could break things)
     " set iskeyword+=_,$,@,%,# " none of these are word dividers
     set mouse=a " use mouse everywhere
     set noerrorbells " don't make noise
     set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
     "             | | | | | | | | |
     "             | | | | | | | | +-- "]" Insert and Replace
     "             | | | | | | | +-- "[" Insert and Replace
     "             | | | | | | +-- "~" Normal
     "             | | | | | +-- <Right> Normal and Visual
     "             | | | | +-- <Left> Normal and Visual
     "             | | | +-- "l" Normal and Visual (not recommended)
     "             | | +-- "h" Normal and Visual (not recommended)
     "             | +-- <Space> Normal and Visual
     "             +-- <BS> Normal and Visual

     set wildmenu " turn on command line completion wild style
     " ignore these list file extensions
     set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
     set wildmode=list:longest " turn on wild mode huge list
 " }


 " Vim UI {
     "set cursorcolumn " highlight the current column
     set cursorline " highlight current line
     set incsearch " BUT do highlight as you type you
                    " search phrase
     set laststatus=2 " always show the status line
     set lazyredraw " do not redraw while running macros
     set linespace=0 " don't insert any extra pixel lines
                      " betweens rows
     " set list " we do what to show tabs, to ensure we get them
               " out of my files
     " set listchars=tab:>-,trail:- " show tabs and trailing
     set matchtime=5 " how many tenths of a second to blink
                      " matching brackets for
     " set nohlsearch " do not highlight searched for phrases
     set nostartofline " leave my cursor where it was
     set novisualbell " don't blink
     set number " turn on line numbers
     set numberwidth=5 " We are good up to 99999 lines
     set report=0 " tell us when anything is changed via :...
     set ruler " Always show current positions along the bottom
     set scrolloff=10 " Keep 10 lines (top/bottom) for scope
     set shortmess=aOstT " shortens messages to avoid
                          " 'press a key' prompt
     set showcmd " show the command being typed
     set showmatch " show matching brackets
     set sidescrolloff=10 " Keep 5 lines at the size
     " set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
     "              | | | | |  |   |      |  |     |    |
     "              | | | | |  |   |      |  |     |    + current
     "              | | | | |  |   |      |  |     |       column
     "              | | | | |  |   |      |  |     +-- current line
     "              | | | | |  |   |      |  +-- current % into file
     "              | | | | |  |   |      +-- current syntax in
     "              | | | | |  |   |          square brackets
     "              | | | | |  |   +-- current fileformat
     "              | | | | |  +-- number of lines
     "              | | | | +-- preview flag in square brackets
     "              | | | +-- help flag in square brackets
     "              | | +-- readonly flag in square brackets
     "              | +-- rodified flag in square brackets
     "              +-- full path to file in the buffer
 " }

 " Text Formatting/Layout {
     set completeopt= " don't use a pop up menu for completions
     set expandtab " no real tabs please!
     set formatoptions=rq " Automatically insert comment leader on return,
                           " and let gq format comments
     set ignorecase " case insensitive by default
     set infercase " case inferred by default
     set nowrap " do not wrap line
     set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
     set smartcase " if there are caps, go case-sensitive
     set shiftwidth=4 " auto-indent amount when using cindent,
                       " >>, << and stuff like that
     set softtabstop=4 " when hitting tab or backspace, how many spaces
                        "should a tab be (see expandtab)
     set tabstop=4 " real tabs should be 8, and they will show with
                    " set list on
 " }

 " Folding {
     set foldenable " Turn on folding
     " set foldmarker={,} " Fold C style code (only use this as default
     "                     " if you use a high foldlevel)
     " set foldmethod=marker " Fold on the marker
     set foldlevel=100 " Don't autofold anything (but I can still
     "                   " fold manually)
     " set foldopen=block,hor,mark,percent,quickfix,tag " what movements
     "                                                   " open folds
     " function SimpleFoldText()  {"{
     "     return getline(v:foldstart).' '
     " endfunction " }
     " set foldtext=SimpleFoldText()  Custom fold text function"}
                                    " (cleaner than default)
 " }

 " Plugin Settings {
     let b:match_ignorecase = 1 " case is stupid
     let perl_extended_vars=1 " highlight advanced perl vars
                               " inside strings

     " TagList Settings {
         let Tlist_Auto_Open=0 " let the tag list open automagically
         let Tlist_Compact_Format = 1 " show small menu
         let Tlist_Ctags_Cmd = 'ctags' " location of ctags
         let Tlist_Enable_Fold_Column = 0 " do show folding tree
         let Tlist_Exist_OnlyWindow = 1 " if you are the last, kill
                                         " yourself
         let Tlist_File_Fold_Auto_Close = 0 " fold closed other trees
         let Tlist_Sort_Type = "name" " order by
         let Tlist_Use_Right_Window = 1 " split to the right side
                                         " of the screen
         let Tlist_WinWidth = 40 " 40 cols wide, so i can (almost always)
                                  " read my functions
         " Language Specifics {
             " just functions and classes please
             let tlist_aspjscript_settings = 'asp;f:function;c:class' 
             " just functions and subs please
             let tlist_aspvbs_settings = 'asp;f:function;s:sub' 
             " don't show variables in freaking php
             let tlist_php_settings = 'php;c:class;d:constant;f:function' 
             " just functions and classes please
             let tlist_vb_settings = 'asp;f:function;c:class' 
         " }
     " }
 " }


 " Mappings {
     " ROT13 - fun
     map <F12> ggVGg?

     " space / shift-space scroll in normal mode
     "noremap <S-space> <C-b>
     "noremap <space> <C-f>
     " Make Arrow Keys Useful Again {
         " map <down> <ESC>:bn<RETURN>
         " map <left> <ESC>:NERDTreeToggle<RETURN>
         " map <right> <ESC>:Tlist<RETURN>
         " map <up> <ESC>:bp<RETURN>
     " }
 " }



 " Autocommands {
     " Notes {
         " I consider .notes files special, and handle them differently, I
         " should probably put this in another file
         au BufRead,BufNewFile *.notes set foldlevel=2
         au BufRead,BufNewFile *.notes set foldmethod=indent
         " au BufRead,BufNewFile *.notes set foldtext=foldtext()
         au BufRead,BufNewFile *.notes set listchars=tab:\ \
         au BufRead,BufNewFile *.notes set noexpandtab
         au BufRead,BufNewFile *.notes set shiftwidth=8
         au BufRead,BufNewFile *.notes set softtabstop=8
         au BufRead,BufNewFile *.notes set tabstop=8
         au BufRead,BufNewFile *.notes set syntax=notes
         au BufRead,BufNewFile *.notes set nocursorcolumn
         au BufRead,BufNewFile *.notes set nocursorline
         " au BufRead,BufNewFile *.notes set guifont=Monaco\ 9
         " au BufRead,BufNewFile *.notes set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
         " au BufRead,BufNewFile *.notes set guifont=Sauce\ Code\ Powerline\ Regular\ 10
         au BufRead,BufNewFile *.notes set spell
        if has("win32")
            " WINDOWS
            au BufRead,BufNewFile *.notes set guifont="Sauce Code Powerline Regular":h13
        endif
        if has("unix")
            if system('uname')=~'Darwin'
                " MAC
                au BufRead,BufNewFile *.notes set guifont=Sauce\ Code\ Powerline:h13
            else
                " LINUX
                au BufRead,BufNewFile *.notes set guifont=Sauce\ Code\ Powerline\ Regular\ 13
            endif
        endif
     " }
     au BufNewFile,BufRead *.ahk setf ahk 
 " }


 " GUI Settings {
 if has("gui_running")
     " Basics {
         colorscheme molokai " my color scheme (only works in GUI)
         set columns=180 " perfect size for me
         " set guifont=Monaco:h10 " My favorite font
         " set guifont=Monaco\ 9 " My favorite font
         " set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
         " set guifont=Sauce\ Code\ Powerline\ Regular\ 10

        if has("win32")
            " WINDOWS
            set guifont="Sauce Code Powerline Regular":h13
        endif
        if has("unix")
            if system('uname')=~'Darwin'
                " MAC
                set guifont=Sauce\ Code\ Powerline:h13
            else
                " LINUX
                set guifont=Sauce\ Code\ Powerline\ Regular\ 13
            endif
        endif
         "set guioptions=ce 
         "              ||
         "              |+-- use simple dialogs rather than pop-ups
         "              +  use GUI tabs, not console style tabs
         set lines=55 " perfect size for me
         set mousehide " hide the mouse cursor when typing
     " }

     " Font Switching Binds {
         "map <F8> <ESC>:set guifont=Consolas:h8<CR>
         "map <F9> <ESC>:set guifont=Consolas:h10<CR>
         " map <F10> <ESC>:set guifont=Monaco\ 9<CR>
         " map <F11> <ESC>:set guifont=Consolas\ 10<CR>
         "map <F12> <ESC>:set guifont=Consolas:h20<CR>
     " }
 endif
 " }


"------------------------------- Minhas configuracoes -----------------------
" SnipMate fix
" Add this line:
" source $VIMRUNTIME/after/plugin/snipMate.vim
" at the end of file C:\Program Files\Vim\vim73\plugin\snipMate.vim

" change the mapleader from \ to ,
let mapleader=","

"Map escape key to jj -- much faster
imap jj <esc>

"Saves time; maps the spacebar to colon
nmap <space> :

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo

"It clears the search buffer when you press ,/
nmap <silent> ,/ :nohlsearch<CR>  

" Map MRU Plugin to F3
" map <F3> :MRU<CR>

"Better line wrapping
set wrap

set pastetoggle=<F11>
" Alphabetically sort CSS properties in file with :SortCSS
:command! SortCSS :g#\({\n\)\@<=#.,/}/sort
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8

"Split windows below the current window.
set splitbelow

"Map code completion to , + tab
imap <leader><tab> <C-x><C-o>
"Change zen coding plugin expansion key to shift + e
let g:user_emmet_expandabbr_key = '<C-e>'

"Faster shortcut for commenting. Requires T-Comment plugin
map <leader>c <c-_><c-_>

" SnipMate {
		" Setting the author var
        " If forking, please overwrite in your .vimrc.local file
		"let g:snips_author = 'Steve Francia <steve.francia@gmail.com>'
		" Shortcut for reloading snippets, useful when developing
		" nnoremap ,smr <esc>:exec ReloadAllSnippets()<cr>
	" }

" easier window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

"------------------------"
"NERDTREE PLUGIN SETTINGS
"------------------------"
"Shortcut for NERDTreeToggle
"nmap <leader>nt :NERDTreeToggle <CR>
" map <F2> :NERDTreeToggle<CR>

"set toggle wrap
:map <F4> :set nowrap! <CR>

"Show hidden files in NerdTree
" let NERDTreeShowHidden=1

" -------------------- Opções NERDTREE Editadas por mim -------------
" tab navigation like firefox
:nmap <C-S-tab> :tabprevious<CR>
:nmap <C-tab> :tabnext<CR>
:map <C-S-tab> :tabprevious<CR>
:map <C-tab> :tabnext<CR>
:imap <C-S-tab> <Esc>:tabprevious<CR>i
:imap <C-tab> <Esc>:tabnext<CR>i
:nmap <C-t> :tabnew :NERDTree<CR>
:imap <C-t> <Esc>:tabnew :NERDTree<CR>
"autopen NERDTree and focus cursor in new document
" autocmd VimEnter * NERDTree H:/
" autocmd VimEnter * wincmd p

"MRU configuration 
" set viewoptions-=options
" augroup vimrc
"     autocmd BufWritePost *
"     \   if expand('%') != '' && &buftype !~ 'nofile'
"     \|      mkview
"     \|  endif
"     autocmd BufRead *
"     \   if expand('%') != '' && &buftype !~ 'nofile'
"     \|      silent loadview
"     \|  endif
" augroup END

" --------------- Editar vimrc em nova aba
nmap <leader>v :tabedit $MYVIMRC<CR>

"edit snippets in a new tab
noremap <leader>w :tab sp <bar> UltiSnipsEdit<CR>


" -------------- Para ler vimrc locais e setar diferentes colorschemes
if filereadable('.vimrc.local')
    source .vimrc.local
endif

" modify selected text using combining diacritics
command! -range -nargs=0 Overline        call s:CombineSelection(<line1>, <line2>, '0305')
command! -range -nargs=0 Underline       call s:CombineSelection(<line1>, <line2>, '0332')
command! -range -nargs=0 DoubleUnderline call s:CombineSelection(<line1>, <line2>, '0333')
command! -range -nargs=0 Strikethrough   call s:CombineSelection(<line1>, <line2>, '0336')

function! s:CombineSelection(line1, line2, cp)
  execute 'let char = "\u'.a:cp.'"'
  execute a:line1.','.a:line2.'s/\%V[^[:cntrl:]]/&'.char.'/ge'
endfunction

" vnoremap OO :Overline<CR>
" vnoremap OOU:Underline<CR>
" vnoremap DUN :DoubleUnderline<CR>
vnoremap OO :Strikethrough<CR>

" ----------------- Conf. CTRL P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" Configurações vim-airline
set t_Co=256
let g:airline_powerline_fonts=1

