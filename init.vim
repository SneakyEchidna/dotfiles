call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'bling/vim-airline'
Plug 'retorillo/airline-tablemode.vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'tpope/vim-commentary' 
Plug 'dhruvasagar/vim-table-mode',        { 'on': 'TableModeEnable' }
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax',            { 'for': 'css' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'reedes/vim-pencil'   
Plug 'christoomey/vim-tmux-navigator'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular',                 { 'for': 'markdown' } " Needed for vim-markdown
Plug 'plasticboy/vim-markdown',           { 'for': 'markdown' }
Plug 'vim-airline/vim-airline-themes'
Plug 'isRuslan/vim-es6'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-surround'
Plug 'skywind3000/asyncrun.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'

call plug#end()
let g:python3_host_prog = '/usr/local/bin/python3'
set encoding=utf8
set regexpengine=1
set lazyredraw
set ttyfast
let NERDTreeMinimalUI = 1
hi Normal guibg=NONE ctermbg=NONE
syntax enable
map <C-n> :NERDTreeToggle<CR>
let g:mapleader=' '
map <Leader> <Plug>(easymotion-prefix)
set updatetime=800
set nornu
set nowrap
" set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set laststatus=2  " Always display the status line
set tabstop=2 shiftwidth=2
set expandtab 
set backspace=indent,eol,start
set hlsearch  
set incsearch   
set ignorecase
set smartcase
set number
set numberwidth=5
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
colorscheme gruvbox
let g:gruvbox_italic=1
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_italicize_strings=1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
let g:airline_theme='gruvbox'

" Make it obvious where 120 characters is {{{2
" Lifted from StackOverflow user Jeremy W. Sherman
" http://stackoverflow.com/a/3765575/2250435
if exists('+colorcolumn')
  set textwidth=80
  set colorcolumn=+1
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>120v.\+', -1)
endif " }}}2
" Open new split panes to right and bottom, which feels more natural {{{2
set splitbelow
set splitright

let g:airline_powerline_fonts = 1 " Enable the patched Powerline fonts
"let g:airline_symbols_ascii = 1
"let g:airline_right_sep = ''
"let g:airline_left_sep = '' 
" let g:airline_symbols={"whitespace": 'Ξ', "paste" : '∥', "linenr":'␊' }
"let g:airline_branch = ''
"let g:airline_symbols.readonly = ''                                                                                                                                                                       
"let g:airline_symbols.maxlinenr = ''
let g:ctrlp_working_path_mode = '0'
let g:ale_sign_error = '⌽' " Less aggressive than the default '>>'
let g:ale_sign_warning = '⏃'
let g:ale_lint_on_enter = 1 " Less distracting when opening a new file  
let g:ale_change_sign_column_color = 0
highlight ALEErrorSign ctermfg=9 ctermbg=0 guifg=#C30500 guibg=#3d3836
highlight ALEWarningSign ctermfg=11 ctermbg=0 guifg=#fabc2e guibg=#3d3836

let g:ale_linters = {'javascript':['eslint']}
let g:ale_fixers = {'javascript': ['prettier'] }
nmap <leader>d <Plug>(ale_fix)
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue ALEFix
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:python3_host_prog = '/usr/bin/python3'
" let g:prettier#config#arrow_parens = 'always'
" let g:prettier#config#trailing_comma = 'es5'
" let g:prettier#config#single_quote = 'true'
" let g:prettier#config#bracket_spacing = 'false'
let g:prettier#exec_cmd_async = 1
let g:table_mode_corner='|'
