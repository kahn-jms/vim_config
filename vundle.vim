set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" NERTree file browser
Plugin 'preservim/nerdtree'
" Make NERDTree always open in the focused file's directory
" With a % is a way to make NERDTree open in the file's dir without changing
" the directory vim thinks you're in. I find changin vim's current dir is more
" useful for v/tabnew commands as well
"nnoremap <leader>n :NERDTreeToggle %<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
autocmd BufEnter * lcd %:p:h

" nerdtree-git-plugin
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Leaving these here as a reference
"let g:NERDTreeGitStatusIndicatorMapCustom = {
"                \ 'Modified'  :'✹',
"                \ 'Staged'    :'✚',
"                \ 'Untracked' :'✭',
"                \ 'Renamed'   :'➜',
"                \ 'Unmerged'  :'═',
"                \ 'Deleted'   :'✖',
"                \ 'Dirty'     :'✗',
"                \ 'Ignored'   :'☒',
"                \ 'Clean'     :'✔︎',
"                \ 'Unknown'   :'?',
"                \ }


" Function definition tagging
Plugin 'ludovicchabant/vim-gutentags'
" Tell gutentags to generate new tags on events
let g:gutentags_generate_on_new = 1
let g:gutentags_generate_on_missing = 1
let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_empty_buffer = 0
" And generate more info for the tags
let g:gutentags_ctags_extra_args = [
						\ '--tag-relative=yes',
						\ '--fields=+ailmnS',
						\ '--python-kinds=-i',
						\ ]
" Define some useful commands for jumping to tags
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-W><C-\> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" A ridiculous amount of color schemes
Plugin 'flazz/vim-colorschemes'

" And yet somehow missing solarized dark
"Plugin 'altercation/vim-colors-solarized'

" Help out with indent highlighting
Plugin 'vim-indent-object'

" Fancy python indenting
Plugin 'indentpython.vim'

" Nerd commenting
Plugin 'scrooloose/nerdcommenter'
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Completion engine
Plugin 'Valloric/YouCompleteMe'
" Plus some extra configs
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Go language, until I get Go working from YCMD
Plugin 'fatih/vim-go'

"" Check syntax on each save
"Plugin 'vim-syntastic/syntastic'
" Syntastic configs
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Linting
"Plugin 'w0rp/ale'
Plugin 'dense-analysis/ale'
" Some extra annoyances
" Ignore line too long warning
let g:ale_python_flake8_options = '--ignore=E501'
"let g:ale_python_mypy_options = '--follow-imports=skip'
nmap <silent> <C-j> :ALENext<cr>
nmap <silent> <C-k> :ALEPrevious<cr>

" Also PEP8 checking?
"Plugin 'nvie/vim-flake8'

" MyPy
"Plugin 'integralist/vim-mypy'

" Markdown viewer
Plugin 'JamshedVesuna/vim-markdown-preview'
" Set it to show Github style Markdown
let vim_markdown_preview_github=1
let vim_markdown_preview_browser='Chromium'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
"" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'
"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'L9'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" Set up fancy icons
" This must be loaded LAST of all plugins
" Currently can't get this to work, requires setting the SSH terminal font 
" family to a NERD patched one which I don't know how to do
Plugin 'ryanoasis/vim-devicons'
set encoding=UTF-8

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
