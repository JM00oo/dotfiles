"scriptencoding utf-8
set encoding=utf-8
set backspace=indent,eol,start

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/ervandew/supertab'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'lepture/vim-jinja'
Plug 'soramugi/auto-ctags.vim'
Plug 'jasontbradshaw/pigeon.vim'
Plug 'honza/vim-snippets'
Plug 'tomlion/vim-solidity'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'zpieslak/vim-autofix'
Plug 'tpope/vim-fugitive'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
call plug#end()

" Common
set incsearch
set runtimepath^=~/.vim/bundle/ctrlp.vim
set list listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·
set clipboard=unnamed
set langmenu=en_US
set colorcolumn=80
set hls
highlight ColorColumn ctermbg=gray
let $LANG = 'en_US'
cnoreabbrev b Buffers
cnoreabbrev gg Ggrep

" NERDTree
let NERDTreeMapActivateNode='<space>'
nmap <C-\> :NERDTreeToggle<CR>
vmap <Leader>c :TComment<CR>
nmap <Leader>c :TComment<CR>

" vim-markdown
let vim_markdown_preview_hotkey='<C-m>'
let vim_markdown_preview_github=1

" ale config
let g:ale_fixers = {
\   '*': [
\         'remove_trailing_lines',
\         'trim_whitespace',
\   ],
\   'javascript': ['eslint'],
\   'typescript': ['tslint'],
\}
let g:ale_fix_on_save = 1
let g:ale_linter_aliases = {'typescriptreact': 'typescript'}
highlight clear ALEError

" gitgutter
set updatetime=100
set signcolumn=yes
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1
