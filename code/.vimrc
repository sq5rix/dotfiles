set encoding=utf-8

set nocompatible
syntax enable
filetype plugin on
set path +=**
set wildmenu

let mapleader = " "
let maplocalleader = " "

inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap < <> <esc>i
inoremap " ""<esc>i
inoremap ' ''<esc>i

:nnoremap Y y$<Esc>
:nnoremap <F5> :buffers<CR>:buffer<Space>
:nnoremap <C-n> :bn<cr>
:nnoremap <C-b> :bp<cr>
:nnoremap <leader>sm :Gvsplit master:%<cr>
:nnoremap <leader>dm :Gvdiff master:%<cr>
:nnoremap <leader>gl :Glog<cr>
:nnoremap <leader>e $p
:nnoremap <c-s> :w<cr>

:inoremap <Left> <nop>
:inoremap <Right> <nop>
:inoremap <Up> <nop>
:inoremap <Down> <nop>
:noremap <Left> <nop>
:noremap <Right> <nop>
:noremap <Up> <nop>
:noremap <Down> <nop>

" Helpful delete/change into blackhole buffer
:noremap <leader>d "_d
:noremap <leader>c "_c

" run python print some debug info and run tests
nnoremap <leader>pp <cr>:w<cr>:CocCommand python.execInTerminal %<cr>
nnoremap <leader>pd oprint('<esc>pa: ', <esc>pa)<esc>
nnoremap <leader>t :w<cr>:!pytest<cr>

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

"" Lines range visible when scrolling
set scrolloff=10

"" Performance improvements
set ttyfast
set synmaxcol=300

"" Do not ring errors
set noerrorbells
set novisualbell

" makro do zamiany [] na get()
let @g='f[c .get(kjf]r)'

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c
set nocompatible
syntax enable
filetype plugin on
set path +=**
set wildmenu

let mapleader = " "
let maplocalleader = " "

inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap < <> <esc>i
inoremap " ""<esc>i
inoremap ' ''<esc>i

:nnoremap Y y$<Esc>
:nnoremap <F5> :buffers<CR>:buffer<Space>
:nnoremap <C-n> :bn<cr>
:nnoremap <C-b> :bp<cr>
:nnoremap <leader>sm :Gvsplit master:%<cr>
:nnoremap <leader>dm :Gvdiff master:%<cr>
:nnoremap <leader>gl :Glog<cr>
:nnoremap <leader>e $p
:nnoremap <c-s> :w<cr>

:inoremap <Left> <nop>
:inoremap <Right> <nop>
:inoremap <Up> <nop>
:inoremap <Down> <nop>
:noremap <Left> <nop>
:noremap <Right> <nop>
:noremap <Up> <nop>
:noremap <Down> <nop>

" Helpful delete/change into blackhole buffer
:noremap <leader>d "_d
:noremap <leader>c "_c

" run python print some debug info and run tests
nnoremap <leader>pp <cr>:w<cr>:CocCommand python.execInTerminal %<cr>
nnoremap <leader>pd oprint('<esc>pa: ', <esc>pa)<esc>
nnoremap <leader>t :w<cr>:!pytest<cr>

set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8

"" Lines range visible when scrolling
set scrolloff=10

"" Performance improvements
set ttyfast
set synmaxcol=300

"" Do not ring errors
set noerrorbells
set novisualbell

" makro do zamiany [] na get()
let @g='f[c .get(kjf]r)'

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'justinmk/vim-sneak'
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'junegunn/goyo.vim'
Plug 'uguu-org/vim-matrix-screensaver'

"  color schemes
Plug 'morhetz/gruvbox'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'flazz/vim-colorschemes'

call plug#end()

" -- edit vimrc
:nnoremap <leader>ev :vsplit ~/.vimrc<cr>
:nnoremap <leader>sv :source ~/.vimrc<cr>

" -- abbreviations
inorea mai_ if __name__ == '__main__':<cr>main()
inorea dec_ def decorator(func):
\<cr>@functools.wraps(func)
\<cr>def wrapper_decorator(*args, **kwargs):
\<cr># Do something before
\<cr>value = func(*args, **kwargs)
\<cr># Do something after
\<cr>return value
\<cr>return wrapper_decorator<esc>

" -- fzf with ripgrep
nnoremap \ :CocSearch<space><C-r>0
nnoremap <C-T> :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>s :BLines<cr>

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

set rtp+=~/.fzf
set rtp+=/usr/local/opt/fzf

" -- use the current working directory
let g:rg_derive_root='true'

colorscheme gruvbox
set background=dark

let loaded_matchparen = 1

let g:netrw_browse_split = 2
let g:vrfr_rg = 'true'
let g:netrw_banner = 0
let g:netrw_winsize = 25

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <leader>ps :Rg<SPACE>
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>ee oif err != nil {<CR>log.Fatalf("%+v\n", err)<CR>}<CR><esc>kkI<esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
vnoremap X "_d
inoremap <C-c> <esc>

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next)
nnoremap <leader>cr :CocRestart<CR>

" -- sessions

" Automatically save the current session whenever vim is closed
autocmd VimLeave * mksession! ~/.vim/shutdown_session.vim
noremap <F7> :source ~/.vim/shutdown_session.vim<CR>
noremap <F2> :mksession! ~/.vim/manual_session.vim<cr>
noremap <F3> :source ~/.vim/manual_session.vim<cr>

" Sweet Sweet FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

autocmd BufWritePre * :call TrimWhitespace()

