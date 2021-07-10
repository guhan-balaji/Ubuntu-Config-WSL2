" initialization
source $VIMRUNTIME/defaults.vim

if has("syntax")
  syntax on;
endif

if has("autocmd")
  filetype plugin indent on
endif

set background=dark

set showcmd
" Show partial command in status line.

set showmatch
" Show matching brackets.

set ignorecase
" Do case insensitive matching

set smartcase
" Do smart case matching

set incsearch
" Incremental search

set autowrite
" Automatically save before commands like :next and :make

set hidden
" Hide buffers when they are abandoned

set mouse=a
" Enable mouse usage on all modes

"Default commented settings from /etc/vim/vimrc ends.

" backspace sttings starts 

set backspace=start,eol,indent  
" indent    allow backspacing over autoindent
" eol       allow backspacing over line breaks join lines
" start     allow backspacing over the start of insert; CTRL-W and CTRL-U stop once at the start of insert.

" backspace settings ends

" tab settings start

set expandtab
" enter spaces when tab is pressed

set tabstop=8
" tabstop is effectively how many columns of whitespace a \t character is worth.

set softtabstop=4
" softtabstop is how many columns of whitespace a tab keypress or a backspace keypress

set shiftwidth=2
" shiftwidth is how many columns of whitespace a “level of indentation” is worth...
" ...The > action indents by 1 level.

set autoindent
set smartindent

" tab settings ends

set textwidth=80
" break lines when line length increases

set nu rnu
" show line number on left and show relative line numbers 

" cursor settings starts.

let &t_SI = "\<Esc>[5 q"    " blinking I-beam in insert mode
let &t_SR = "\<Esc>[3 q"    " blinking underline in replace mode
let &t_EI = "\<Esc>[1 q"    " default cursor usually blinking block otherwise

" Ps = 0  -> blinking block.
" Ps = 1  -> blinking block (default).
" Ps = 2  -> steady block.
" Ps = 3  -> blinking underline.
" Ps = 4  -> steady underline.
" Ps = 5  -> blinking bar (xterm).
" Ps = 6  -> steady bar (xterm).

" cursor settings ends.

" autocompletion settings starts.

" inoremap { {}<Esc>i
" inoremap ( ()<Esc>i
" inoremap [ []<Esc>i
" inoremap < <><Esc>i
" inoremap " ""<Esc>i
" inoremap ' ''<Esc>i
 
" inoremap {<CR> {<CR>}<Esc>i
" inoremap (<CR> (<CR>)<Esc>i
" inoremap [<CR> [<CR>]<Esc>i

" autocompletion settings ends.

" mappings for escape key in insert and visual mode starts.

inoremap jk <Esc><Space>
inoremap kj <Esc><space>

vnoremap jk <Esc>
vnoremap kj <Esc>

" mappings for escape key in insert and mode ends.

" Modified readline mappings in insert mode starts.

" inoremap <c-a> <c-o>0
" inoremap <c-e> <c-o>$
" inoremap <c-k> <c-o>d$
" inoremap <c-u> <c-o>d0
" inoremap <c-d> <c-o>dw

" Modified readline mappings in insert mode ends.

" centralizes swp and backup files in one location starts.

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" with two trailing slashes vim will create swap files using the whole path of
" the files being edited to avoid collisions (slashes in the file's path will be
" replaced by percent symbol %).
" For example, if you edit /path/one/foobar.txt and /path/two/foobar.txt, then
" you will see two swap files in ~/.vim/swap/ that are named
" %path%one%foobar.txt and %path%two%foobar.txt, respectively.

" centralizes swp and backup files in one location ends.
