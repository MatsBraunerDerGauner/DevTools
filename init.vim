filetype plugin on
set statusline+=%F
set tabstop=4 |
set softtabstop=4 |
set shiftwidth=4 |
set textwidth=120 |
set expandtab |
set autoindent |
set fileformat=unix |

set encoding=utf-8
set hidden
set laststatus=2
set number
set autoindent " enable auto indentation of lines
set hlsearch "highlights matching searches
set history=1000
set scrolloff=10

"set autochdir
set noswapfile " doesn't create swap files
set noshowmode

set smartindent " allow vim to best-effort guess the indentation
set pastetoggle=<F2> " enable paste mode

set wildmenu "graphical auto complete menu
set lazyredraw "redraws the screne when it needs to
set showmatch "highlights matching brackets
set incsearch "search as characters are entered

"Plugins
call plug#begin(stdpath('data'))

Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'junegunn/fzf'

Plug 'szw/vim-maximizer'

"Debug
"Plug 'puremourning/vimspector'

call plug#end()


let mapleader = " "

nmap <leader><leader> V

"Maximizer
noremap <leader>m :MaximizerToggle<cr> 

"vimspector
"noremap <leader>dd :call vimspector#Launch()<cr>

"safe File
map <leader>w :w<cr>
map <leader><leader>w :source %<cr>

"Key tasten wegen neo2
set langmap=snrthjkl;hjklsnrt

"nvim
map <leader>q :q<cr>

"FZF
map <leader>f :FZF<cr>



"File Navigation
map <leader>x :cd %:h<cr> 
map <leader>t :cd<cr>

"Nerd Tree
nnoremap <leader>o :NERDTreeToggle<cr>

"windows move
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

map <leader>i :wincmd s<cr>
map <leader>a :wincmd v<cr>
map <leader>c :hid<CR>

"Tabs
map <leader>e :tabnew<CR>
map <leader>u :tabclose<CR>
map <Tab> gt
map <leader><Tab> gT

"open terminal
map <leader><leader>e :terminal<cr>
tnoremap <esc> <C-\><C-n>

"open vimrc
map <leader>v :e ~/.config/nvim/init.vim<cr>
"epen vimrc windows
"map <leader>v :e ~/AppData\Local\nvim\init.vim<cr>

"color sheme
color gruvbox
