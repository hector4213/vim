syntax on
set encoding=UTF-8
set linespace=2
set ruler
set bg=dark
set cursorline
set signcolumn=yes
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80

" Give more space for showing messages
set cmdheight=2
set updatetime=50

let g:ctrlp_max_files=0

call plug#begin('~/.vim/plugged')
"Plug 'gruvbox-community/gruvbox'
Plug 'crusoexia/vim-monokai'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
" CtrlP
Plug 'ctrlpvim/ctrlp.vim', { 'on': 'CtrlP' }
" Auto Completion

Plug 'w0rp/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-rails'
Plug 'airblade/vim-gitgutter'
Plug 'Yggdroot/indentLine'
Plug 'pangloss/vim-javascript'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'MaxMEllon/vim-jsx-pretty'
"Go lang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Syntastic
Plug 'vim-syntastic/syntastic'
" NERD Commenter
Plug 'scrooloose/nerdcommenter'
" Surround
Plug 'tpope/vim-surround'
" Whitespace
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

"IndentLine config
let g:indentLine_enabled=1
let g:indentLine_concealcursor=0
let g:indentLine_char='┆'
let g:indentLine_faster=1

" PowerLine bottom Bar stuff
let g:airline_theme='powerlineish'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#ale#enabled=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tagbar#enabled=1
let g:airline_skip_empty_sections=1


"CtrlP config
let g:ctrlp_map='<c-p>'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore="node_modules\|DS_Store\|git"

" Trims whitespace
autocmd BufWritePre * StripWhitespace

" NERDTree configuration
nmap <F6> :NERDTreeToggle<CR>
let g:NERDTreeWinSize=35
let g:NERDTreeWinPos='left'
let g:NERDTreeGitStatusUseNerdFonts=1
" Visual stuff
colorscheme monokai

" Go syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

" Auto formatting and importing
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

" Status line types/signatures
let g:go_auto_type_info = 1
set guifont=HackNerdFontComplete-Regular:h15
