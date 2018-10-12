call plug#begin()
"solarized theme
Plug 'https://github.com/altercation/vim-colors-solarized'
Plug 'powerline/powerline-fonts'
Plug 'bling/vim-airline'
Plug 'retorillo/airline-tablemode.vim'
Plug 'ryanoasis/vim-webdevicons'
Plug 'mhinz/vim-grepper'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'haya14busa/incsearch.vim'   
Plug 'tpope/vim-commentary' 
Plug 'dhruvasagar/vim-table-mode',        { 'on': 'TableModeEnable' }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'othree/html5.vim'
Plug 'hail2u/vim-css3-syntax',            { 'for': 'css' }
Plug 'cakebaker/scss-syntax.vim'
Plug 'reedes/vim-pencil'   

Plug 'godlygeek/tabular',                 { 'for': 'markdown' } " Needed for vim-markdown
Plug 'plasticboy/vim-markdown',           { 'for': 'markdown' }
Plug 'trevordmiller/nova-vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'isRuslan/vim-es6'
"Plug 'Valloric/YouCompleteMe'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale'
"Plug 'mattn/emmet-vim'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-surround'
Plug 'skywind3000/asyncrun.vim'
" post install (yarn install | npm install) then load plugin only for editing supported files
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
call plug#end()

syntax enable

map <C-n> :NERDTreeToggle<CR>
let g:airline_theme='solarized'
let g:mapleader=' '
map <Leader> <Plug>(easymotion-prefix)
set nowrap
set ruler         " show the cursor position all the time
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
set background=dark
colorscheme solarized

"let g:ale_javascript_eslint_use_global = 1

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
let g:airline_symbols={"whitespace": 'Ξ', "paste" : '∥', "linenr":'␊' }
"let g:airline_branch = ''
"let g:airline_symbols.readonly = ''                                                                                                                                                                       
"let g:airline_symbols.maxlinenr = ''
let g:ctrlp_working_path_mode = '0'
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
  \  'javascript.jsx' : {
    \      'extends' : 'jsx',
    \  },
  \}
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file  

let g:ale_linters = {'javascript':['eslint']}
let g:ale_fixers = {'javascript': ['prettier'] }
nmap <leader>d <Plug>(ale_fix)
"autocmd BufWritePost *.js? AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
"let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue ALEFix
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:python3_host_prog = '/usr/bin/python3'
let g:deoplete#enable_at_startup = 1
let g:prettier#config#arrow_parens = 'always'
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#bracket_spacing = 'false'
