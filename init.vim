packadd vim-jetpack

" polyglot SETTINGS
let g:polyglot_disabled = ['markdown']

call jetpack#begin()
" 見た目プラグイン
Jetpack 'joshdick/onedark.vim'
Jetpack 'Yggdroot/indentLine'
Jetpack 'itchyny/lightline.vim'
Jetpack 'sheerun/vim-polyglot'
" エディタ関連プラグイン
Jetpack 'tpope/vim-surround'
Jetpack 'tpope/vim-commentary'
Jetpack 'lambdalisue/fern.vim'
Jetpack 'mhinz/vim-startify'
" 補完・LSP関連プラグイン
Jetpack 'neoclide/coc.nvim'
" 各言語別プラグイン
" Jetpack 'mattn/emmet-vim'
call jetpack#end()

" coc.nvim SETTINGS
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <C-n> coc#pum#visible() ? coc#pum#next(1) : "\<C-n>"
inoremap <silent><expr> <C-p> coc#pum#visible() ? coc#pum#prev(1) : "\<C-p>"
inoremap <silent><expr> <C-y> coc#pum#visible() ? coc#pum#confirm() : "\<C-y>"
set completeopt=menuone,noselect
set statusline^=%{coc#status()}

" lightline SETTINGS
let g:lightline = { 'colorscheme': 'wombat' }

" Fern SETTINGS
nnoremap <silent><C-n> :Fern . -reveal=%<CR>
let g:fern#default_hidden=1

" colorscheme onedark SETTINGS"
if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" 基本設定===========================================================
set termguicolors
colorscheme onedark
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight Folded ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE
if has('vim_starting')
  let &t_SI .= "\e[6 q"
  let &t_EI .= "\e[2 q"
  let &t_SR .= "\e[4 q"
 endif

 set encoding=UTF-8
set number
set helplang=ja
set backspace=2
set nobackup
set noshowmode
set noswapfile
set noundofile
set autoread
xnoremap p "_dP
set hidden
set showcmd
set wildmode=list:longest
hi Constant ctermfg=14
set cursorline
hi clear CursorLine
set visualbell
set showmatch
set laststatus=2
set clipboard&
set clipboard^=unnamedplus
set mouse=a
set tabstop=2
set shiftwidth=0
set smartindent
set expandtab
autocmd FileType python setlocal tabstop=4
set incsearch
set wrapscan
syntax enable

" 操作設定===========================================================
" Leader
let mapleader = "\<Space>"
" ESC
inoremap <silent> jj <ESC>
" Save
nnoremap <Leader>w :w<CR>
" End
nnoremap <Leader>q :q<CR>
" PageDown
nnoremap <Leader>j <PageDown>
" PageUp
nnoremap <Leader>k <PageUp>
" Left
nnoremap <nowait><Leader>h ^
" Right
nnoremap <nowait><Leader>l $
" Move Window
noremap <Leader><Leader> <C-w>w

" Split Window
nnoremap ss :<C-u>sp<CR>
nnoremap sv :<C-u>vs<CR>

"pair jump
nnoremap <Leader>m %
