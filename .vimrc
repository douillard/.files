" ---------- Start NeoBundle Scripts ----------
if &compatible
  set nocompatible " Be iMproved
endif

set runtimepath^=~/.vim/bundle/neobundle.vim/ "required

call neobundle#begin(expand('~/.vim/bundle')) " required 

NeoBundleFetch 'Shougo/neobundle.vim' " required - let NeoBundle manage NeoBundle

" General Bundles 
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'godlygeek/tabular'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'ervandew/supertab'
NeoBundle 'mileszs/ack.vim'

" Syntax Bundles
NeoBundle 'JSON.vim'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'chrisbra/csv.vim'
NeoBundle 'vim-scripts/nginx.vim'
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'groenewege/vim-less'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'leafgarland/typescript-vim'
NeoBundle 'ekalinin/Dockerfile.vim'
NeoBundle 'avakhov/vim-yaml'
NeoBundle 'mxw/vim-jsx'
" NeoBundle 'vim-syntastic/syntastic'
NeoBundle 'mustache/vim-mustache-handlebars'
" NeoBundle 'Valloric/MatchTagAlways'
NeoBundle 'tpope/vim-liquid'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'jeffkreeftmeijer/vim-numbertoggle'
NeoBundle 'digitalrounin/vim-yaml-folds'
NeoBundle 'nikvdp/ejs-syntax'
"NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'prettier/vim-prettier'
NeoBundle 'junegunn/vim-plug'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'nvie/vim-flake8'
NeoBundle 'cburroughs/pep8.py'
NeoBundle 'tell-k/vim-autopep8'



NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' } " specify revision/branch/tag.
call neobundle#end()      " required 
filetype plugin indent on " required 
NeoBundleCheck            " prompt to install uninstalled bundles
" ---------- End NeoBundle Scripts ----------


" ---------- User Interface ---------- 
" colorscheme wombat
hi Search cterm=NONE ctermfg=white ctermbg=blue "hi Search guibg=peru guifg=wheat
syntax on
filetype off
filetype plugin indent on

set ai                         " Auto indent
set autoread                   " Set to auto read when a file is changed from the outside
set backspace=eol,start,indent " Configure backspace so it acts as it should act
set cmdheight=2                " Height of the command bar
set expandtab                  " Use spaces instead of tabs
set foldlevelstart=20
set foldmethod=indent
set hid                        " A buffer becomes hidden when it is abandoned
set history=1000               " Sets how many lines of history VIM has to remember 
set hlsearch                   " Highlight search results
set ignorecase                 " Ignore case when searching
set incsearch                  " Makes search act like search in modern browsers
set laststatus=2               " Add full file path to your existing statusline
set lazyredraw                 " Don't redraw while executing macros (good performance config)
set lbr                        " Linebreak on 500 characters
set mat=2                      " How many tenths of a second to blink when matching brackets
set noerrorbells               " No annoying sound on errors
set nocompatible               " Make vim more useful
set noswapfile                 " Local dirs
set novisualbell
set nu
set relativenumber
set ruler                      " Always show current position
set shiftwidth=2
set showmatch                  " Show matching brackets when text indicator is over them
set si                         " Smart indent
set smartcase                  " When searching try to be smart about cases 
set smarttab                   " Be smart when using tabs ;)
set statusline+=%F
set so=7                       " Set 7 lines to the cursor - when moving vertically using j/k
set t_vb=
set tabstop=2                  " 1 tab == 2 spaces
set textwidth=100
set tm=500
set tw=600
set whichwrap+=<,>,h,l
set wildignore=*.o,*~,*.pyc    " Ignore compiled files
set wildmenu                   " Turn on the WiLd menu
set wrap                       " Wrap lines
set clipboard^=unnamed,unnamedplus " allows y to copy to system clipboard


" ---------- Mapping ---------- 
nmap <leader>w :w!<cr> 

" ---------- let ---------- 
let html_no_rendering=1
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"o
let mapleader=','
    if exists(":Tabularize")
      nmap <Leader>a= :Tabularize /=<CR>
      vmap <Leader>a= :Tabularize /=<CR>
      nmap <Leader>a: :Tabularize /:\zs<CR>
      vmap <Leader>a: :Tabularize /:\zs<CR>
    endif

let g:ackprg = 'ag --vimgrep'


" ---------- Other ---------- 
" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" jslint
hi clear SpellBad
hi SpellBad cterm=underline,bold ctermfg=white ctermbg=red

" formatter
let g:formatter_yapf_style = 'pep8'
let g:formatdef_eslint = '"eslint-formatter"'
let g:formatters_javascript = ['eslint']
let g:jsx_ext_required = 0

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|build'

" ---------- AUTOCOMMANDS ---------- 
" autocmd BufWritePost *.py call Flake8()
if has("gui_running")
"  syntax on
"  set hlsearch
  colorscheme wombat
"  set bs=2
"  set ai
"  set ruler
endif
