" Neovim Config

" Map the leader key to SPACE
let mapleader="\<SPACE>"

set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set noshowmode          " Do not show current mode as lightline will do so
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set relativenumber      " Show relative line numbers
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set guicursor=          " Fix bug where wierd chars are shown when pressing i, :, etc
set hlsearch            " Highlight search results

set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set nojoinspaces        " Prevents inserting two spaces after punctuation on a join (J)

set splitbelow          " Horizontal split below current.
set splitright          " Vertical split to right of current.

set cursorline          " Highlight current line
set showtabline=2       " Always show tabline

set scrolloff=3         " Show next 3 lines while scrolling.
set sidescrolloff=5     " Show next 5 columns while side-scrolling.
set nostartofline       " Do not jump to first character with page commands.

set ignorecase          " Make searching case insensitive
set smartcase           " ... unless the query has capital letters.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list                " Show problematic characters.

" Also highlight all tabs and trailing whitespace characters.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$\|\t/

" Open file at same line number
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif


" Keymaps

" Misc
nnoremap ; :
nnoremap : ;
nnoremap j gj
nnoremap k gk
inoremap jk <esc>
nnoremap <leader>z :set wrap!<CR>
nnoremap <leader>w :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :edit ~/.config/nvim/init.vim<CR>
nnoremap <leader>r :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <leader>/ :set invhlsearch<CR>
" Disabled
inoremap <esc> <nop>
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
" Buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bc :bd<CR>
" File Explorer
nnoremap <leader>t :Texplore<CR>
" Buffer switching
nnoremap <leader>1 <Plug>lightline#bufferline#go(1)
nnoremap <leader>2 <Plug>lightline#bufferline#go(2)
nnoremap <leader>3 <Plug>lightline#bufferline#go(3)
nnoremap <leader>4 <Plug>lightline#bufferline#go(4)
nnoremap <leader>5 <Plug>lightline#bufferline#go(5)
nnoremap <leader>6 <Plug>lightline#bufferline#go(6)
nnoremap <leader>7 <Plug>lightline#bufferline#go(7)
nnoremap <leader>8 <Plug>lightline#bufferline#go(8)
nnoremap <leader>9 <Plug>lightline#bufferline#go(9)
nnoremap <leader>0 <Plug>lightline#bufferline#go(10)

" Vim Plug
call plug#begin('~/.vim/plugged')

Plug 'ervandew/supertab'

Plug 'Yggdroot/indentLine'

Plug 'joshdick/onedark.vim'

Plug 'itchyny/lightline.vim'

Plug 'mengelbrecht/lightline-bufferline'

call plug#end()

colorscheme onedark

let g:lightline                  = {'colorscheme': 'one'}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

let g:lightline#bufferline#show_number  = 2
