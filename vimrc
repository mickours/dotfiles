set nocompatible               " be iMproved
filetype off                   " required!
set encoding=utf-8

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" My Bundles here:
"
" original repos on github
Bundle 'kien/ctrlp.vim'
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'bronson/vim-trailing-whitespace'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
" Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'xolox/vim-easytags'
Bundle 'xolox/vim-misc'
Bundle 'majutsushi/tagbar'
Bundle 'Rykka/riv.vim'
Bundle 'tmhedberg/SimpylFold'
Bundle 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Bundle 'nvie/vim-flake8'
Bundle 'tell-k/vim-autopep8'

" Bundle 'Lokaltog/vim-easymotion'
" Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" Bundle 'tpope/vim-rails.git'
" vim-scripts repos
" Bundle 'L9'
" Bundle 'FuzzyFinder'
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
" ...

" For multi-byte character support (CJK support, for example):
"set fileencodings=ucs-bom,utf-8,cp936,big5,euc-jp,euc-kr,gb18030,latin1

set tabstop=2       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=2    " Number of spaces to use for each step of (auto)indent.

set expandtab       " Use the appropriate number of spaces to insert a <Tab>.
                    " Spaces are used in indents with the '>' and '<' commands
                    " and when 'autoindent' is on. To insert a real tab when
                    " 'expandtab' is on, use CTRL-V <Tab>.

set smarttab        " When on, a <Tab> in front of a line inserts blanks
                    " according to 'shiftwidth'. 'tabstop' is used in other
                    " places. A <BS> will delete a 'shiftwidth' worth of space
                    " at the start of the line.

set showcmd         " Show (partial) command in status line.

set number          " Show line numbers.

set showmatch       " When a bracket is inserted, briefly jump to the matching
                    " one. The jump is only done if the match can be seen on the
                    " screen. The time to show the match can be set with
                    " 'matchtime'.

set hlsearch        " When there is a previous search pattern, highlight all
                    " its matches.

set incsearch       " While typing a search command, show immediately where the
                    " so far typed pattern matches.

set ignorecase      " Ignore case in search patterns.

set smartcase       " Override the 'ignorecase' option if the search pattern
                    " contains upper case characters.

set backspace=2     " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.

set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set textwidth=75    " Maximum width of text that is being inserted. A longer
                    " line will be broken after white space to get this width.

set formatoptions=c,q,r,t " This is a sequence of letters which describes how
                    " automatic formatting is to be done.
                    "
                    " letter    meaning when present in 'formatoptions'
                    " ------    ---------------------------------------
                    " c         Auto-wrap comments using textwidth, inserting
                    "           the current comment leader automatically.
                    " q         Allow formatting of comments with "gq".
                    " r         Automatically insert the current comment leader
                    "           after hitting <Enter> in Insert mode.
                    " t         Auto-wrap text using textwidth (does not apply
                    "           to comments)

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.

set mouse=a         " Enable the use of the mouse.

set wildmenu        " Cool tab completion stuff
set wildmode=list:longest,full

set laststatus=2    " Activate Status bar even without split

filetype plugin indent on     " required!
syntax on
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

set showmode

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

"autocmd FileType tex call Tex_config()


"function Tex_config()
    " global debug statement : can be printed by doing
    "  "':call Tex_PrintDebug()'
 "   let g:Tex_Debug='1'

    " listing Environnement
  "  let g:Tex_Env_lstlisting="\\begin{lstlisting}[language=<++>, title=<++>]\<LF><++>\<LF>\\end{lstlisting}"

    " define viewer
   " let g:Tex_ViewRule_pdf='evince'
    "let g:Tex_viewRule_dvi='evince'


  "  let g:Tex_CompileRule_pdf='pdflatex "-interaction=nonstopmode $*'
  "  let g:Tex_DefaultTargetFormat='pdf'
  "  let g:Tex_MultipleCompileFormats='dvi,pdf'
  "  let g:Tex_GotoError='1'
"endfunction

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

"set spell
set spelllang=en,fr

" Ctr-c is actually copying on the X clipboard
vmap <C-c> "+y

" type jj to extract from insert mode
imap jj <Esc>

"" Make sur the backup files are not spread out anywhere
"set backup
"set backupdir=~/.vim/
"set directory=~/.vim/

" for a better leader
let mapleader='!'

" NERDTree toggle with <F2>
map <leader><F2> :NERDTreeToggle<CR>

" Easy pane navigation with Alt+arrows
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" bind Ctrl-Arrow to word move
nnoremap <silent> <C-Right> w
nnoremap <silent> <C-Left> b

" more natural split placement
set splitbelow
set splitright

" Turn off rope from Python plugin
let g:pymode_rope = 0

""""""" Riv config
" Change Riv leader from C-e to !
let g:riv_global_leader = ';'

" Dont fold evrytime I write
let g:riv_fold_auto_update = 0

" Let the blank line at the fold end
let g:riv_fold_blank = 0

""""""" Python IDE config
" Want to see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

" YouCompleteMe customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

" make it pretty
let python_highlight_all=1

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2


