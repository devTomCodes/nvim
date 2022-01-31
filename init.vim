syntax on
:set termguicolors
set guifont=MelsoLGS
set encoding=UTF-8
set nocompatible
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set nu
set linebreak
set smartcase
set noswapfile
set undofile
set incsearch
highlight ColorColumn ctermbg=0
highlight NonText ctermbg=none
filetype plugin on


call plug#begin()
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-scripts/restore_view.vim'
Plug 'tpope/vim-commentary'
Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
Plug 'miyakogi/seiya.vim'
Plug 'sheerun/vim-polyglot'
Plug 'adrian5/oceanic-next-vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
Plug 'plasticboy/vim-markdown'
Plug 'andrewradev/tagalong.vim'
Plug 'vim-airline/vim-airline'
Plug 'sbdchd/neoformat'
Plug 'KabbAmine/vCoolor.vim'
Plug 'scrooloose/syntastic'
Plug 'turbio/bracey.vim'
Plug 'pangloss/vim-javascript'
Plug 'jiangmiao/auto-pairs'
Plug 'lepture/vim-css'
Plug 'alvan/vim-closetag'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-scripts/loremipsum'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'valloric/matchtagalways'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle'     }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"prettier
command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
let g:prettier#quickfix_enabled = 0

"Hexokinase
let g:Hexokinase_ftOptInPatterns = {
\     'css': 'full_hex,rgb,rgba,hsl,hsla,colour_names',
\     'html': 'full_hex,rgb,rgba,hsl,hsla,colour_names'
\ }

let g:Hexokinase_ftEnabled = ['css', 'html']

"airline
let g:airline#extensions#tabline#enabled = 1
" colorscheme

let g:oceanic_transparent_bg=1
colorscheme oceanicnext
let g:airline_theme = 'oceanicnext'
let g:oceanic_for_polyglot = 1
let g:oceanic_transparent_bg = 1

" nerdtree
let mapleader = ","
nmap <leader>t :NERDTree<cr>
set guifont=MelsoLGS\ Nerd\ Font\ 15
let g:airline_powerline_fonts = 1
let g:lightline = { 'colorscheme': 'oceanicnext' }

"devicons
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"ejs highlight
au BufNewFile,BufRead *.ejs set filetype=html

"emmet
let g:user_emmet_expandabbr_key = '§'

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier

"Seiya
let g:seiya_auto_enable=1
let g:seiya_target_groups = has('nvim') ? ['guibg'] : ['ctermbg']

"closetag
let g:closetag_filenames = 'html'
