
" Plugin Management {{{
set number "
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundlej manage Vundle, required
Plugin 'gmarik/Vundle.vim'		" Plugin manager
Plugin 'tmhedberg/SimpylFold'		" smarter folding
Plugin 'vim-scripts/indentpython.vim'	" better auto-indentation
" Plugin 'Valloric/YouCompleteMe'		" Python auto-complete (+jedi)
Plugin 'nvie/vim-flake8'		" PEP8 checking
Plugin 'scrooloose/syntastic'		" checks syntax each save
Plugin 'scrooloose/nerdtree'		" cool visual file tree
Plugin 'tpope/vim-fugitive'		" git integration w/ VIM
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'scrooloose/nerdcommenter'	" easy (un)commenting
Plugin 'jistr/vim-nerdtree-tabs'	" allows use of tabs	
Plugin 'kien/ctrlp.vim'			" fuzzy file searcher
Plugin 'sjl/gundo.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'rking/ag.vim'			" silver_searcher ('ag') plugin
Plugin 'google/vim-colorscheme-primary'	" google colorscheme
Plugin 'jpalardy/vim-slime'		" send vim text to an REPL like an IDE
Plugin 'junegunn/seoul256.vim'		" nice light vim colorscheme
Plugin 'ayu-theme/ayu-vim' 		" nice light vim colorscheme 
Plugin 'romainl/flattened'		"  '   '  '
Plugin 'lifepillar/vim-solarized8'
Plugin 'davidhalter/jedi-vim'   		" jedi for python
" Plugin 'roxma/nvim-yarp'  		" dependency of ncm2
" Plugin 'roxma/vim-hug-neovim-rpc'	" dependency
" Plugin 'ncm2/ncm2'			" python completion
" Plugin 'ncm2/ncm2-bufword'  		" buffer keyword completion
" Plugin 'ncm2/ncm2-path'  		" filepath completion
Plugin 'ervandew/supertab'		" use <Tab> for insert completions

"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Install new plugins in vim w/ command :PluginInstall
" }}}
" .vimrc organization {{{
set number "
" --------------------------
"    .vimrc organization
" --------------------------
set modelines=1
  " declares that certain vim settings be used only for present file
  " __ Above, we tell vim to check just the final line of the file for
  " __ a modeline. [See final line comment]
" }}}

" ===================   UI Configs ===================================
" VIM colorschemes {{{
set number "

" colorschemes must be placed in ~/.vim/colors/

" --- Enable true colors support
set termguicolors     " enable true colors support
" let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" ---- Use different colorschemes based on filetype ----
" -- Default Coding
" [[bad wolf]]
" Make the gutters darker than the background.
let g:badwolf_darkgutter = 1
colorscheme badwolf 

" -- TEX, XML files
" " [[seoul256]]
" let g:seoul256_background = 252	" 252(darkest) ~ 256 (lightest) [light theme]
" autocmd BufEnter *.xml colorscheme seoul256-light
" autocmd BufEnter *.tex colorscheme seoul256-light
" autocmd BufEnter *.cls colorscheme seoul256-light

" [[seoul256]]
let g:ayucolor = "light"
autocmd BufEnter *.xml colorscheme ayu 
autocmd BufEnter *.tex colorscheme ayu 
autocmd BufEnter *.cls colorscheme ayu 

" " [[flattened]]
" autocmd BufEnter *.xml colorscheme flattened_light
" autocmd BufEnter *.tex colorscheme flattened_light
" autocmd BufEnter *.cls colorscheme flattened_light

" -- google primary
" set background=light
" colorscheme primary


" }}}
" Movement {{{
set number "

" --- Movement ---
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" " $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]
" ignore line numbers when selecting w/ mouse
se mouse+=a
" }}}
" Screen splitting {{{
set number "

" --- Screen Splitting ---
set splitright		"changes Vim's default split opening dirxn
set splitbelow
" -- Split navigations
nnoremap <C-J> <C-W><C-J>
  " <Ctrl-j> move to split below
nnoremap <C-K> <C-W><C-K>	
  " <Ctrl-k> move to split above
nnoremap <C-L> <C-W><C-L>	
  " <Ctrl-l> move to split to the right
nnoremap <C-H> <C-W><C-H>	
  " <Ctrl-h> move to split to the left

" --- Split sizing ----
"set winheight=30
  " makes sure current window will be 30 lines
"set winminheight=5
  " makes sure all splits will be at least 5 lines

"nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
"nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>
  " use + and - to increase/decrease windows by reasonable amount
nnoremap <silent> + :exe "vertical resize " . (winwidth(0) * 6/5)<CR>
nnoremap <silent> - :exe "vertical resize " . (winwidth(0) * 5/6)<CR>
  " use + and - to increase/decrease windows by reasonable amount


" }}}
" Searching {{{
set number "

" --- Searching ---
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>
  " turn off search highlight (mapped to<,space>)
set clipboard=unnamed
  " accesses system clipboard
set backspace=indent,eol,start
" --- UI Config --- 
set cursorline	    " highlight current line
set wildmenu        " visual autocomplete for command menu
set showmatch       " highlight matching [{()}]
set showcmd         " show command in bottom bar
set lazyredraw      " redraw only when we need to.
set showmatch       " highlight matching [{()}]
set number   "permanently turn on line numbers

map <F4> :!mv file1 file2 <CR><CR>
silent !
syntax enable
" }}}
" Super searching {{{
set number "

" --- Super searching ---
" -- The_silver_searcher
nnoremap <leader>a :Ag
  " open ag.vim withouth leaving VIM
" -- CtrlP settings
  "  (press Ctrl-P to do fuzzy searching)
let g:ctrlp_match_window = 'bottom,order:ttb'
  " order matching files top to bottom
let g:ctrlp_switch_buffer = 0
  " always open files in new buffers
let g:ctrlp_working_path_mode = 0
  " lets us change the working directory during a VIM session 
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
  " lets CtrlP run external command (ag.vim) to find files (faster)
" }}}
" NERDTree file browsing {{{
set number "

" --- File Browsing ---
  " installed NERDtree plugin ('proper' file tree)
  " installed vim-nerdtree-tabs (to use tabs)
let NERDTreeIgnore=['\.pyc$', '\~$'] "
  " ignores .pyc files in NERDtree
map <C-n> :NERDTreeToggle<CR>
  " opens NERDtree with Ctrl+n
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  " close vim if only window left open is a NERDTree
" }}}
" NERDcommenter config {{{
set number "

" --- NERDcommenter config ---
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }



" }}}
" Gundo options {{{
set number "

" --- Gundo Options ---
" README: https://sjl.bitbucket.io/gundo.vim/ 
nnoremap <leader>u :GundoToggle<CR>     " toggle gundo
  "displays undo tree in graphical form (mapped to <,u>)
"set g:gundo_disable=1	"uncomment to disable gundo
" }}}
" Leader shortcuts {{{
set number "
" --- Leader Shortcuts ---
let mapleader=","       " leader is comma (for mapped commands)

" }}}
" Powerline/airline configs {{{
set number "
" --- Powerline setup ---
" -- Powerline
set laststatus=2
let powerline_symbols = 'fancy'
set termencoding=utf-8
"set showtabline=2
  " Always display the tabline, even if there is only one tab
set noshowmode
  " Hide the default mode text (e.g. -- INSERT -- below the statusline)
" -- airline
let g:airline_theme='powerlineish'
  "themes: https://github.com/vim-airline/vim-airline/wiki/Screenshots
  " Good themes: powerlineish, badwolf, 
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#whitespace#show_message=0 
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_symbols = get(g:,'airline_symbols',{})
let g:airline_symbols.linenr = ''   " ''
"let g:airline_symbols.maxlinenr=''
let g:airline_symbols.columnr=''    
let g:airline_powerline_fonts = 1
set ttimeoutlen=10 
" }}}
" Vim-slime (IDE enhancements) {{{
set number "
" --- Vim-slime and tmux---
" -- make tmux the default target
let g:slime_target = "tmux"	" makes tmux the default place to send text to
" -- allow tmux to accept this input
let g:slime_paste_file = "$HOME/.slime_paste"
" or maybe...
"let g:slime_paste_file = tempname()

" --- Vim-slime and Python/iPython ---
let g:slime_python_ipython = 1	"use iPython's error-free magic pasting

" }}}
" ================ Python VIM configs ======================== 
" Code folding {{{
set number "
" --- Code Folding ---
" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
  " Enable folding with the spacebar
let g:SimpylFold_docstring_preview=1
  " Pro Tip: want to see the docstrings for folded code?
" }}}
" Python PEP8 indentation {{{
set number "
" --- Python PEP8 indentation ---
" Description: gives standard four spaces when you hit tab,
" ensures lines length doesn't go beyond 80 chars, and
" stores the file in unix format so you don't get conversion 
" issues checking into GitHub and/or sharing etc.
au BufNewFile,BufRead *.py
			\ set tabstop=4 |
			\ set softtabstop=4 |
			\ set shiftwidth=4 |
			" \ set textwidth=79 |
			\ set expandtab |
			\ set autoindent |
			\ set fileformat=unix |

" --- UTF8 Support ---
set encoding=utf-8
" }}}
" Python auto-complete {{{
set number "
" --- Jedi Auto-complete ---
autocmd FileType python setlocal completeopt-=preview "disable docstring popup

" --- YouCompleteMe (didn't like) ---
" " Installed YouCompleteMe plugin
" let g:ycm_autoclose_preview_window_after_completion=1
  " "ensures autocomplete window goes away when you're done with it
" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
  " "will go to definition of whatever you're currently on (mapped <,g>)

" " --- NCM3 Autocomplete ---
" " ncm2 settings
" autocmd BufEnter * call ncm2#enable_for_buffer()
" set completeopt=menuone,noselect,noinsert
" set shortmess+=c
" inoremap <c-c> <ESC>
" " make it fast
" let ncm2#popup_delay = 5
" let ncm2#complete_length = [[1, 1]]
" " Use new fuzzy based matches
" let g:ncm2#matcher = 'substrfuzzy'

" }}}
" Virtualenv support {{{
set number "
" --- Virtualenv Support ---
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
" }}}
" Python syntax checking/highlighting {{{
set number "
" --- Python Syntax Checking/Highlighting ---
  "  installed syntastic plugin (checks syntax on each save)
  "  installed vi-flake8 plugin (adds PEP8 checking)
let python_highlight_all=1
syntax on
" }}}






" --------------------- Leave this at bottom -------------------------
" --- modeline for .vimrc-specific settings
" vim:foldmethod=marker:foldlevel=0
