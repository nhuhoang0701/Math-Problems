call plug#begin(stdpath('data') . '/plugged')

" Make sure you use single quotes

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" YouCompleteMe autocompletion
" Plug 'https://github.com/ycm-core/YouCompleteMe.git'


" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)>nlug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" One monokai theme
Plug 'fratajczak/one-monokai-vim'

" Nord theme
Plug 'arcticicestudio/nord-vim'

" One dark theme
Plug 'https://github.com/joshdick/onedark.vim.git'

" Lightlint
Plug 'itchyny/lightline.vim'

Plug 'rakr/vim-one'

" Autoclose bracket
Plug 'Raimondi/delimitMate'

" Use release branch of coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'christoomey/vim-tmux-navigator'
" Initialize plugin system
call plug#end()

" color
syntax on
colorscheme onedark

let g:one_allow_italics=1
let g:airline_theme='one'

" customize attrbutes
set relativenumber
set number
set tabstop=4
set shiftwidth=4
set expandtab
set wrap
set linebreak
set textwidth=0
set wrapmargin=0

" map
nnoremap <Space> <Leader>
map <Space>h :nohl<CR>

let g:lightline = {
   \ 'colorscheme': 'one'
   \ }

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>

