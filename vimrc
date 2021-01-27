" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'vim-airline/vim-airline'
Plug 'mileszs/ack.vim'
Plug 'meain/vim-package-info'
Plug 'elzr/vim-json'
Plug 'chrisbra/csv.vim'
Plug 'plasticboy/vim-markdown'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-liquid'
Plug 'Chiel92/vim-autoformat'
Plug 'avakhov/vim-yaml'
Plug 'digitalrounin/vim-yaml-folds'
Plug 'junegunn/vim-plug'
Plug 'cakebaker/scss-syntax.vim'
Plug 'dhruvasagar/vim-table-mode'
Plug 'Yggdroot/indentLine'
Plug 'goerz/jupytext.vim'

Plug 'flazz/vim-colorschemes'
Plug 'felixhummel/setcolors.vim'

" ---------- JavaScript ---------- "
Plug 'pangloss/vim-javascript'
Plug 'nikvdp/ejs-syntax'
Plug 'mxw/vim-jsx'

" ---------- Python ---------- "
Plug 'nvie/vim-flake8'
Plug 'cburroughs/pep8.py'
Plug 'tell-k/vim-autopep8'

" ---------- Linters ---------- "
" ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax checking and semantic errors) 
" in NeoVim 0.2.0+ and Vim 8 while you edit your text files, and acts as a Vim Language Server Protocol client.
Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier'

" Plug 'altercation/vim-colors-solarized'
" Plug 'junegunn/seoul256.vim'
" Plug 'JSON.vim'
" Plug 'scrooloose/nerdtree'
" Plug 'ervandew/supertab'
" Plug 'w0rp/ale'
" Plug 'styled-components/vim-styled-components'
" Plug 'leafgarland/typescript-vim'
" Plug 'vim-scripts/nginx.vim'
" Plug 'chr4/nginx.vim'
" Plug 'hashivim/vim-terraform'
" Plug 'xolox/vim-colorscheme-switcher'
" Plug 'xolox/vim-misc'
" Plug 'vim-ruby/vim-ruby'
" Plug 'groenewege/vim-less'
" Plug 'vim-syntastic/syntastic'
" Plug 'mustache/vim-mustache-handlebars'
" Plug 'Valloric/MatchTagAlways'
" Plug 'jiangmiao/auto-pairs'


" List ends here. Plugins become visible to Vim after this call.
call plug#end()
" ---------- END VIM-PLUG ---------- 




" ---------- COLOR ---------- "
syntax on

colorscheme monokai
" colorscheme douillard
" colorscheme Gruvbox


" hi Visual  guifg=#000000 guibg=#FFFFFF gui=none
" ctermbg: Background, ctermfg: Foreground
" hi Normal  ctermbg=Black
" hi Visual  cterm=NONE ctermbg=white ctermfg=black
" hi Search  cterm=NONE ctermbg=blue ctermfg=white
" hi Comment ctermfg=Blue
" hi iCursor ctermfg=Black
"hi Search guibg=peru guifg=wheat




" ---------- FILETYPE ---------- "
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
set wildignore=*.o,*~,*.pyc,*/tmp/*,*.so,*.swp,*.zip " Ignore compiled files
set wildmenu                   " Turn on the WiLd menu
set wrap                       " Wrap lines
set clipboard^=unnamed,unnamedplus " allows y to copy to system clipboard


" ---------- Mapping ---------- 
nmap <leader>w :w!<cr> 
" map <C-n> :NERDTreeToggle<CR>

" ---------- let ---------- 
let mapleader = ','
let html_no_rendering=1

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|archive|archives)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

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
let g:syntastic_javascript_checkers = ['eslint']

" Markdown
let g:vim_markdown_conceal = 0

" yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'

" ---------- macvim ---------- 
" let macvim_skip_colorscheme=1
" if !exists("macvim_skip_colorscheme") && !exists("colors_name")
"    colorscheme gor
" endif
" if has("gui_running")
"   syntax on
"   set hlsearch
"   colorscheme gor
"   set bs=2
"   set ai
"   set ruler
"   set guifont=AndaleMono:h13
" "   set background=dark
"   highlight Normal guibg=Black
" endif
