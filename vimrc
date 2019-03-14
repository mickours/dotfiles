set nocompatible               " be iMproved
filetype off                   " required!
set encoding=utf-8

" Setting up Vundle - the vim plugin bundler
" Set this to 1 tu launch vundle install
" let iCanHazVundle=0
" let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
" if !filereadable(vundle_readme)
"     echo "Installing Vundle.."
"     echo ""
"     silent !mkdir -p ~/.vim/bundle
"     silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
"     let iCanHazVundle=0
" endif
" 
" set rtp+=~/.vim/bundle/vundle/
" call vundle#rc()
" 
" " My Bundles here:
" "
" " original repos on github
" Bundle 'vim-latex/vim-latex'
" Bundle 'kien/ctrlp.vim'
" Bundle 'christoomey/vim-tmux-navigator'
" Bundle 'bronson/vim-trailing-whitespace'
" Bundle 'bling/vim-airline'
" Bundle 'scrooloose/syntastic'
" Bundle 'airblade/vim-gitgutter'
" Bundle 'tpope/vim-fugitive'
" " Bundle 'klen/python-mode'
" Bundle 'scrooloose/nerdcommenter'
" Bundle 'scrooloose/nerdtree'
" Bundle 'xolox/vim-easytags'
" Bundle 'xolox/vim-misc'
" Bundle 'majutsushi/tagbar'
" Bundle 'Rykka/riv.vim'
" Bundle 'tmhedberg/SimpylFold'
" Bundle 'vim-scripts/indentpython.vim'
" Bundle 'Valloric/YouCompleteMe'
" " Bundle 'nvie/vim-flake8'
" Bundle 'tell-k/vim-autopep8'
" Bundle 'chrisbra/csv.vim'
" Bundle 'jceb/vim-orgmode'
" Bundle 'tpope/vim-speeddating'
" Bundle 'terryma/vim-multiple-cursors'
" Bundle 'sk1418/HowMuch'
" Bundle 'sjl/gundo.vim'
" Bundle 'LnL7/vim-nix'
" Bundle 'Chiel92/vim-autoformat'
" Bundle 'jpalardy/vim-slime'
" Bundle 'fatih/vim-go'

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

set tabstop=4       " Number of spaces that a <Tab> in the file counts for.

set shiftwidth=4    " Number of spaces to use for each step of (auto)indent.

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

set formatoptions=c,q,r,t
                    " This is a sequence of letters which describes how
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

set backspace=indent,eol,start
                    " Influences the working of <BS>, <Del>, CTRL-W
                    " and CTRL-U in Insert mode. This is a list of items,
                    " separated by commas. Each item allows a way to backspace
                    " over something.

set autoindent      " Copy indent from current line when starting a new line
                    " (typing <CR> in Insert mode or when using the "o" or "O"
                    " command).

set ruler           " Show the line and column number of the cursor position,
                    " separated by a comma.

set background=dark " When set to "dark", Vim will try to use colors that look
                    " good on a dark background. When set to "light", Vim will
                    " try to use colors that look good on a light background.
                    " Any other value is illegal.
                    "

nnoremap gV `[v`]   " highlight last inserted text

"" better colors for menu in a dark theme
highlight Pmenu ctermfg=Cyan ctermbg=Blue cterm=None guifg=Cyan guibg=DarkBlue
highlight PmenuSel ctermfg=White ctermbg=Blue cterm=Bold guifg=White guibg=DarkBlue gui=Bold
highlight PmenuSbar ctermbg=Cyan guibg=Cyan
highlight PmenuThumb ctermfg=White guifg=White


set mouse=a         " Enable the use of the mouse.

set wildmenu        " Cool tab completion stuff
set wildmode=list:longest,full

set laststatus=2    " Activate Status bar even without split

set foldlevel=99    " Don't fold by default

set shell=/bin/sh   " Needed by https://github.com/vim-syntastic/syntastic/issues/1131


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
"
" if iCanHazVundle == 0
"     echo "Installing Bundles, please ignore key map error messages"
"     echo ""
"     :BundleInstall
" endif

set showmode

" Allow saving of files as sudo when I forgot to start vim using sudo.
cmap w!! w !sudo tee > /dev/null %

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

" Dont fold
let g:riv_fold_auto_update = 0
let g:riv_disable_folding = 0

" Let the blank line at the fold end
let g:riv_fold_blank = 0

" Check spell for RST files
autocmd BufNewFile,BufRead *.rst setlocal spell spelllang=en

""""""" Python IDE config
" Want to see the docstrings for folded code
let g:SimpylFold_docstring_preview=1

" Set Flake8 option and map
let g:flake8_show_in_gutter=1
"autocmd BufWritePost *.py call flake8#Flake8UnplaceMarkers()

" YouCompleteMe customization
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

" make it pretty
let python_highlight_all=1

autocmd BufNewFile,BufRead *.py call SetPythonOptions()
function SetPythonOptions()
  setlocal tabstop=4
  setlocal softtabstop=4
  setlocal shiftwidth=4
  setlocal textwidth=79
  setlocal expandtab
  setlocal autoindent
  setlocal fileformat=unix
  setlocal cc=80
  highlight ColorColumn ctermbg=8
endfunction

"autoformat
noremap <Leader>f :Autoformat<CR><CR>

" Make slime works for Tmux
let g:slime_target="tmux"
if $TMUX
  let g:slime_default_config={"socket_name": split($TMUX, ",")[0], "target_pane": ":.2"}
endif

let g:slime_python_ipython=1

" Better colors for spelling errors
hi clear SpellBad
if version >= 700
  hi SpellBad   guisp=red    gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=240 term=underline cterm=underline
  hi SpellCap   guisp=yellow gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=58 term=underline cterm=underline
  hi SpellRare  guisp=blue   gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=58 term=underline cterm=underline
  hi SpellLocal guisp=orange gui=undercurl guifg=NONE guibg=NONE ctermfg=NONE ctermbg=58 term=underline cterm=underline
endif

" Add a line without going to insert mode
"nmap <S-Enter> OO<Esc>
"nmap <CR> o<Esc>

"rainbowparentheses
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let blacklist = ['hs','omlet','ml','mli']
au Syntax * if index(blacklist, &ft) < 0 | RainbowParenthesesLoadBraces
au VimEnter * if index(blacklist, &ft) < 0 |  RainbowParenthesesToggle
au Syntax * if index(blacklist, &ft) < 0 | RainbowParenthesesLoadRound
au Syntax * if index(blacklist, &ft) < 0 | RainbowParenthesesLoadSquare

" Grammar check sortcuts
nmap <Leader>i <Plug>(grammarous-fixit)<Plug>(grammarous-move-to-next-error)
nmap <Leader>n <Plug>(grammarous-move-to-next-error)
nmap <Leader>o <Plug>(grammarous-open-info-window)
let g:grammarous#use_vim_spelllang = 1

" set text wrap for text files
autocmd BufRead,BufNewFile *.md,*.txt,*.rst,*.tex call s:setTextMode()
function s:setTextMode()
    setlocal textwidth=79
    setlocal spelllang=en
    setlocal spell
endfunction

" Use TAB to complete when typing words, else inserts TABs as usual.  Uses
" dictionary, source files, and completor to find matching words to complete.

" Note: usual completion is on <C-n> but more trouble to press all the time.
" Never type the same word twice and maybe learn a new spellings!
" Use the Linux dictionary when spelling is in doubt.
function! Tab_Or_Complete() abort
  " If completor is already open the `tab` cycles through suggested completions.
  if pumvisible()
    return "\<C-N>"
  " If completor is not open and we are in the middle of typing a word then
  " `tab` opens completor menu.
  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-R>=completor#do('complete')\<CR>"
  else
    " If we aren't typing a word and we press `tab` simply do the normal `tab`
    " action.
    return "\<Tab>"
  endif
endfunction

" Use `tab` key to select completions.  Default is arrow keys.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Use tab to trigger auto completion.  Default suggests completions as you type.
let g:completor_auto_trigger = 0
inoremap <expr> <Tab> Tab_Or_Complete()

" Language Client config
let g:LanguageClient_autoStart = 1
let g:LanguageClient_signColumnAlwaysOn = 1

let g:LanguageClient_serverCommands = {
  \ 'python': ['pyls'],
  \ 'nix': ['nix-lsp'],
  \ 'rust': ['rustup', 'run', 'stable', 'rls'],
  \ 'go': ['go-langserver'],
  \ 'c' : ['clangd'] }

nnoremap <leader> c :call LanguageClient_contextMenu()<CR>
nnoremap <silent> gh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> ge :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<CR>
