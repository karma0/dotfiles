
" Number of spaces that a pre-existing tab is equal to.
" For the amount of space used for a new tab use shiftwidth.
au BufRead,BufNewFile *py,*pyw,*.c,*.cpp,*.h set tabstop=4

" What to use for an indent.
" This will affect Ctrl-T and 'autoindent'.
" Python: 4 spaces
" C: tabs (pre-existing files) or 4 spaces (new files)
au BufRead,BufNewFile *.py,*pyw set shiftwidth=4
au BufRead,BufNewFile *.py,*.pyw set expandtab
fu Select_c_style()
    if search('^\t', 'n', 150)
        set shiftwidth=4
        set noexpandtab
    el
        set shiftwidth=4
        set expandtab
    en
endf
au BufRead,BufNewFile *.c,*.cpp,*.h call Select_c_style()
au BufRead,BufNewFile Makefile* set noexpandtab

" ARDUINO
au BufRead,BufNewFile *.pde set filetype=arduino
au BufRead,BufNewFile *.ino set filetype=arduino

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.cpp,*.h match BadWhitespace /\s\+$/

" Wrap text after a certain number of characters
" Python: 79
" C: 79
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.cpp,*.h set textwidth=79
au BufRead,BufNewFile *.c,*.cpp,*.h set textwidth=79

" Turn off settings in 'formatoptions' relating to comment formatting.
" - c : do not automatically insert the comment leader when wrapping based on
"    'textwidth'
" - o : do not insert the comment leader when using 'o' or 'O' from command mode
" - r : do not insert the comment leader when hitting <Enter> in insert mode
" Python: not needed
" C: prevents insertion of '*' at the beginning of every line in a comment
au BufRead,BufNewFile *.c,*.cpp,*.h set formatoptions-=c formatoptions-=o formatoptions-=r

" Use UNIX (\n) line endings.
" Only used for new files so as to not force existing files to change their
" line endings.
" Python: yes
" C: yes
au BufNewFile *.py,*.pyw,*.c,*.cpp,*.h set fileformat=unix


" ----------------------------------------------------------------------------
" The following section contains suggested settings.  While in no way required
" to meet coding standards, they are helpful.

" Set the default file encoding to UTF-8: ``set encoding=utf-8``

" Puts a marker at the beginning of the file to differentiate between UTF and
" UCS encoding (WARNING: can trick shells into thinking a text file is actually
" a binary file when executing the text file): ``set bomb``

" For full syntax highlighting:
"``let python_highlight_all=1``
"``syntax on``
" Automatically indent based on file type: ``filetype indent on``
" Keep indentation level from previous line: ``set autoindent``

" Folding based on indentation: ``set foldmethod=indent``

syntax enable
colorscheme wombat256

"set nohlsearch
set ai
"set bg=dark
set showmatch
highlight SpecialKey ctermfg=DarkGray
set listchars=tab:>-,trail:~
set list
"autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
"set tabstop=4
"set shiftwidth=4
set expandtab
set autoindent
set smartindent
set listchars=tab:>-
set listchars+=trail:.
set ignorecase
set smartcase
"map <C-t><up> :tabr<cr>
"map <C-t><down> :tabl<cr>
"map <C-t><left> :tabp<cr>
"map <C-t><right> :tabn<cr>

"set nobackup
"set nowritebackup
"set noswapfile
"set lines=40
"set columns=80
"set tabstop=2
"set shiftwidth=2
set softtabstop=4
"set autoindent
set smarttab
"filetype indent on
"filetype on
"filetype plugin on
"syntax on

set tabstop=2
set smarttab
set shiftwidth=2
set autoindent
set expandtab


"execute pathogen#infect()

""" Restore position in file on load """
"set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END


" EJS templates (throws lint errors, but at least displays correctly)
au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile *.js.ejs set filetype=javascript
au BufRead,BufNewFile *.coffee.ejs set filetype=coffee


" Tag bar toggle
nmap <F8> :TagbarToggle<CR>

" NERDTree start when no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Close if NERDTree is all that is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Launch NERDTree
map <C-n> :NERDTreeToggle<CR>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="horizontal"

" JSHint and Angular integration
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

let g:EasyMotion_leader_key="\\"

set mouse-=a

