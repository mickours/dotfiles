set nocompatible               " be iMproved
filetype off                   " required!
set encoding=utf-8

" colorscheme sublimemonokai
"Gruvebox coloscheme better contrast
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_improved_warnings = 1
let g:gruvbox_improved_strings = 0

colorscheme gruvbox

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

set formatoptions=c,q,r
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
"highlight Pmenu ctermfg=Cyan ctermbg=Blue cterm=None guifg=Cyan guibg=DarkBlue
"highlight PmenuSel ctermfg=White ctermbg=Blue cterm=Bold guifg=White guibg=DarkBlue gui=Bold
"highlight PmenuSbar ctermbg=Cyan guibg=Cyan
"highlight PmenuThumb ctermfg=White guifg=White


set mouse=a         " Enable the use of the mouse.

set wildmenu        " Cool tab completion stuff
set wildmode=list:longest,full

set laststatus=2    " Activate Status bar even without split

set foldlevel=99    " Don't fold by default

set shell=/bin/sh   " Needed by https://github.com/vim-syntastic/syntastic/issues/1131


filetype plugin indent on     " required!
syntax on
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

" Check spell for RST files
autocmd BufNewFile,BufRead *.rst setlocal spell spelllang=en

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

" Manage Completion with omnifunc
" see https://vim.fandom.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"" Note: usual completion is on <C-n> but more trouble to press all the time.
"" Never type the same word twice and maybe learn a new spellings!
"" Use the Linux dictionary when spelling is in doubt.
"function! Tab_Or_Complete() abort
"  " If completor is already open the `tab` cycles through suggested completions.
"  if pumvisible()
"    return "\<C-N>"
"  " If completor is not open and we are in the middle of typing a word then
"  " `tab` opens completor menu.
"  elseif col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
"    return "\<C-R>=completor#do('complete')\<CR>"
"  else
"    " If we aren't typing a word and we press `tab` simply do the normal `tab`
"    " action.
"    return "\<Tab>"
"  endif
"endfunction
"
" Use `tab` key to select completions.  Default is arrow keys.
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

"" Use tab to trigger auto completion.  Default suggests completions as you type.
"let g:completor_auto_trigger = 0
"inoremap <expr> <Tab> Tab_Or_Complete()

" Language Client config
let g:LanguageClient_autoStart = 1
let g:LanguageClient_signColumnAlwaysOn = 1

let g:LanguageClient_serverCommands = {
  \ 'python': ['python-language-server'],
  \ 'nix': ['nix-lsp'],
  \ 'rust': ['rustup', 'run', 'stable', 'rls'],
  \ 'go': ['go-langserver'],
  \ 'c' : ['clangd'],
  \ 'cpp': ['cquery'] }

autocmd FileType python setlocal omnifunc=LanguageClient#complete

nnoremap <silent> gh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> gr :call LanguageClient_textDocument_references()<CR>
nnoremap <silent> gs :call LanguageClient_textDocument_documentSymbol()<CR>
nnoremap <silent> ge :call LanguageClient_textDocument_rename()<CR>
nnoremap <silent> gf :call LanguageClient_textDocument_formatting()<CR>

let g:airline#extensions#default#section_truncate_width = {
      \ 'b': 79,
      \ 'x': 60,
      \ 'y': 88,
      \ 'z': 45,
      \ 'warning': 80,
      \ 'error': 80,
\ }

" better Yaml checker
let g:syntastic_yaml_checkers = ['yamllint']

" good indentation for YAML
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
