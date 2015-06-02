" .vimrc
" See: http://vimdoc.sourceforge.net/htmldoc/options.html for details

" Run vundle first to load vim plugins
source ~/.vim/vundle.vim
" Required to make vundle work
filetype plugin indent on


" shows status line with filename, column/row coords, dirty bit
:set laststatus=2
" provide two lines for status messages at the bottom of the screen
:set cmdheight=2
" shows the line/column information for the current location of the cursor
:set ruler
" sets xterm title to display the name of the file currently being edited
:set title
" shows mode (i.e. insert mode etc)
:set showmode
" shows the keystrokes currently waiting to be processed
:set showcmd
" always reports the number of lines changed
:set report=0
" flashes the screen instead of beeping the computer
":set visualbell
" Show hybrid line numbers
:set relativenumber
:set number

" searches are incremental
:set incsearch
" show matching bracket briefly
:set showmatch
" highlight all search pattern matches
:set hlsearch
" searches are case insensitive unless they contain uppercase letters
" must have ignorecase set too
:set ignorecase
:set smartcase

" show long lines as they are
:set nowrap
" character to mark lines that exceed 80 characters
":set listchars+=extends:@

" indent on new line is equal to indent on previous line
":set autoindent
" tabstops set to 4 space
:set tabstop=2
" tabstops are converted to spaces, ensuring the file always looks the same.
:set expandtab
" width of an indent level
:set shiftwidth=2
" round indents off to shiftwidth
:set shiftround

" maximum allowable line length
" :set textwidth=99
" autoformats text, wraps lines, autoindents, continues comments etc.
:set formatoptions=c,r,o,q,w,n,l,a ",t
" allows backspace to work across lines and before the start of insert.
:set backspace=indent,eol,start
" Copy indent from current line when starting a new line
:set autoindent      
:set smartindent      

" syntax colouration and highlighting
:syntax on

" filetype specific commands.
:filetype on
:autocmd FileType make :set noexpandtab
:autocmd FileType c :set cindent

" these are abbreviations for convenience.
:iab #i #include
:iab #d #define
:iab perr fprintf(stderr,"%s:%d:\n",__FILE__,__LINE__);

" write a backup of the current file (with an appended ~) on each write
":set backup

" tab autocompletion in the command space
:set wildchar=<TAB>
:set wildmenu
:set wildmode=longest,full
" Enable the use of the mouse.
:set mouse=a

" Try to use colors that look good on a dark background.
set t_Co=256
set background=dark
colorscheme oxeded
"highlight comment ctermfg=darkgreen

" Prevent autoindent from messing up tabbing when pasting from clipboard
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

" A nicer way to move to the middle of the current line
:nnoremap gm :call cursor(0, virtcol('$')/2)<CR><C-g>

" Clear search highlights when control-g is pushed
:nnoremap <C-g> :noh<CR><C-g>

" Formatting for git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72


" Use an undo file to record change history
:set undofile
" Tell vim where undo files are
:set undodir=.vim/vimundo/
