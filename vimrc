" Set to auto read when a file is changed from the outside
set autoread

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

" Configure backspace so it acts as it should act
"set backspace=eol,start,indent
"set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" Force background to None regardless of colorscheme
autocmd ColorScheme * highlight Normal ctermbg=None
autocmd ColorScheme * highlight NonText ctermbg=None

" Enable syntax highlighting
syntax enable
" Color Scheme
" let g:codedark_transparent=1
colorscheme desert
" colorscheme codedark
set background=dark

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
" regular tab is 8 spaces
" indent by multitudes of 4
set shiftwidth=4
set tabstop=8
set softtabstop=4
set shiftround

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent

" Set Code Folding
set foldmethod=indent
set foldlevel=99

" Map Window Movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" Turn on line numbers:
set number

" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

" Better copy & paste
" When you want to paste large blocks of code into vim, press F2 before you
" paste. At the bottom you should see ``-- INSERT (paste) --``.

set pastetoggle=<F2>
set clipboard=unnamed

" Execute file being edited with <Shift> + e:
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR>

" Automatic reloading of .vimrc
 autocmd! bufwritepost .vimrc source %

" Mouse and backspace
set bs=2     " make backspace behave like normal again

" Map Ctrl-Tab for Tabs, also requires .Xresources and .screenrc
nmap <C-Tab> :tabn<CR>
nmap <C-S-Tab> :tabp<CR>
nmap <C-t> :tabnew<CR>

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

" map sort function to a Ctrl-Down
vnoremap <C-Down> :sort<CR>

" easier moving of code blocks
" Try to go into visual mode (v), thenselect several lines of code here and
" then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" Showing line numbers and length
set number  " show line numbers
set tw=79   " width of document (used by gd)
set nowrap  " don't automatically wrap on load
" set wrap    "Wrap lines
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=blue

" Useful settings
set history=700
set undolevels=700

" Disable stupid backup and swap files - they trigger too many events
" for file system watchers
set nobackup
set nowritebackup
set noswapfile

" OUTDATED, repleced with native manager in vim 8.0
" Setup Pathogen to manage your plugins
" mkdir -p ~/.vim/autoload ~/.vim/bundle
" curl -so ~/.vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim
" Now you can install any plugin into a .vim/bundle/plugin-name/ folder
" call pathogen#infect()

" Determine filetype and indent rules
filetype on
filetype plugin indent on

" Set Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Allow shellcheck to follow source/imports
let g:syntastic_sh_shellcheck_args="-x"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

" Set narrow indent lines
let g:indentLine_char = '⦙'

" Set spacing for yaml
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd BufRead,BufNewFile *.tpl set filetype=yaml
