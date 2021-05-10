call plug#begin('~/.vim/plugged')
Plug 'lifepillar/vim-solarized8'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'hashivim/vim-terraform'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'othree/yajs.vim'
Plug 'chr4/nginx.vim'


Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'sgur/vim-lazygutter'
Plug 'vim-scripts/indentpython.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'rust-lang/rust.vim'
call plug#end()

silent! colorscheme solarized8_high

au BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.typescriptreact

set background=light
set hlsearch ignorecase
set showmatch mat=2
set number
set shiftwidth=4 softtabstop=4 expandtab smarttab cindent autoindent
set nowrap linebreak
set smartcase
set hidden
set nobackup nowritebackup noswapfile noundofile undolevels=10000
set re=0


let mapleader = "\<space>"

map Q <nop>
map <leader><leader> <c-^>
nnoremap <cr> :nohlsearch<cr>
noremap <leader>w :w!<cr>

nmap <leader>c :set paste<cr>
nmap <leader>C :set nopaste<cr>

nmap <leader>q :q<cr>
nmap <leader>Q :qa!<cr>

nmap <leader>r :NERDTreeFind<cr>
nmap <leader>t :NERDTree<cr>
nmap <leader>T :NERDTreeClose<cr>

nmap <leader>gb :Gblame<cr>
nmap <leader>gd :Gvdiff<cr>zR<cr>
nmap <leader>gl :BCommits<cr>

map <c-k> 10k
map <c-j> 10j

map <leader>p :GFiles<cr>
map <leader>P p=`]
map <leader>b :Buffers<cr>
map <leader>l :Lines<cr>

noremap <leader>V :e ~/.vimrc<cr>
map <leader>v :source ~/.vimrc<cr>
map <leader>g :Rg<cr>
map <c-w>v :vsp<cr>
map ,n :vertical resize -35<cr>
map ,m :vertical resize -15<cr>
map ,/ :vertical resize +15<cr>
map ,. :vertical resize +35<cr>

nnoremap <c-h> <c-w><c-h>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-n> :bnext<cr>
nnoremap <c-p> :bprevious<cr>
nnoremap <c-d> :bd<cr>
map <c-t> :e ~/Documents/todo<cr>

map <leader>o :set list<cr>
map <leader>O :set nolist<cr>
set listchars=tab:>-
set listchars+=space:.

" jump to last position in a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
highlight Normal ctermbg=None

let g:gitgutter_terminal_reports_focus=0
let updatetime=750

let g:airline_theme='tomorrow'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_section_z = "%p%% (%l/%L)"

