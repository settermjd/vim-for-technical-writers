set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My Bundles
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'nanotech/jellybeans.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'kana/vim-textobj-user'
Bundle 'slim-template/vim-slim'
Bundle 'spf13/PIV'
Bundle 'bling/vim-airline'
Bundle 'ervandew/supertab'
Bundle 'majutsushi/tagbar'
Bundle 'sumpygump/php-documentor-vim'
Bundle 'godlygeek/tabular'
Bundle 'sheerun/vim-polyglot'
Bundle 'airblade/vim-gitgutter'
Bundle 'Shougo/neocomplcache.vim'
Bundle 'sandeepcr529/Buffet.vim'
Bundle 'rbgrouleff/bclose.vim'
Bundle 'vim-scripts/Solarized'
Bundle 'fatih/vim-go'
Bundle 'SirVer/ultisnips'
Bundle 'fatih/molokai'
Bundle "pangloss/vim-javascript"                                                                             

" Writing plugins
Bundle 'plasticboy/vim-markdown'
Bundle 'nelstrom/vim-markdown-folding'
Bundle "mikewest/vimroom"
Bundle "reedes/vim-pencil"
Bundle "reedes/vim-colors-pencil"
Bundle "reedes/vim-wordy"
Bundle "reedes/vim-lexical"
Bundle "reedes/vim-quotable"
Bundle "reedes/vim-textobj-sentence"
Bundle "reedes/vim-litecorrect"

filetype plugin indent on

let mapleader=","

color jellybeans

set cursorline
set expandtab
set modelines=0
set shiftwidth=2
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set tabstop=2
set nowrap
set number
set expandtab
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase

" Automatic formatting
autocmd BufWritePre *.rb :%s/\s\+$//e
autocmd BufWritePre *.go :%s/\s\+$//e
autocmd BufWritePre *.haml :%s/\s\+$//e
autocmd BufWritePre *.html :%s/\s\+$//e
autocmd BufWritePre *.scss :%s/\s\+$//e
autocmd BufWritePre *.slim :%s/\s\+$//e

au BufNewFile * set noeol
au BufRead,BufNewFile *.go set filetype=go

" Configurations for Markdown files
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" No show command
autocmd VimEnter * set nosc

" Quick ESC
imap jj <ESC>

" Jump to the next row on long lines
map <Down> gj
map <Up>   gk
nnoremap j gj
nnoremap k gk

" Map the space bar to open/close a fold
nnoremap <Space> za

" format the entire file
nmap <leader>fef ggVG=

" Open new buffers
nmap <leader>s<left>   :leftabove  vnew<cr>
nmap <leader>s<right>  :rightbelow vnew<cr>
nmap <leader>s<up>     :leftabove  new<cr>
nmap <leader>s<down>   :rightbelow new<cr>

" Tab between buffers
noremap <tab> <c-w><c-w>

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" Resize buffers
if bufwinnr(1)
  nmap Ä <C-W><<C-W><
  nmap Ö <C-W>><C-W>>
  nmap ö <C-W>-<C-W>-
  nmap ä <C-W>+<C-W>+
endif

" NERDTree
nmap <leader>n :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']

" Syntastic
let g:syntastic_mode_map = { 'mode': 'passive' }
let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.0.0-p0/bin/ruby'

" CtrlP
nnoremap <silent> t :CtrlP<cr>
let g:ctrlp_working_path_mode = 2
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 600
let g:ctrlp_max_depth = 5

" Go programming
set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim

" Quit with :Q
command -nargs=0 Quit :qa!

" vim-pencil configuration
" For further options see https://github.com/reedes/vim-pencil
" let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
augroup pencil
  autocmd!
  autocmd FileType markdown,mkd,md call pencil#init({'wrap': 'soft'})
  autocmd FileType markdown,mkd,md call SetMarkdownOptions() 
  autocmd FileType text            call pencil#init()
augroup END

function SetMarkdownOptions()
  setlocal spell
endfunction
