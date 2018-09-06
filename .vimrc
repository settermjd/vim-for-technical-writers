" Modeline and Notes {
"
"   This is the personal vim config of Matthew Setter (aka settermjd).
"
"   Author: Matthew Setter, http://matthewsetter.com/
"      URL: https://github.com/settermjd/vim-configuration
"
"   Special thanks to:
"
"    - Evan Coury (aka EvanDotPro), Tom Oram (aka TomPHP) for their configs and support
"      in getting used to vim and learning how to do the basic configuration which I've
"      made here.
"    - All of the authors of the other amazing Vim plugins I use every day.
"
" }
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles {

    " Let Vundle manage Vundle
    Bundle 'gmarik/vundle'

    " My Bundles
    Bundle 'tpope/vim-sensible'
    Bundle 'tpope/vim-unimpaired'
    Bundle 'tpope/vim-surround'
    Bundle 'tpope/vim-fugitive'
    Bundle 'tpope/vim-repeat'
    Bundle 'scrooloose/nerdtree'
    Bundle 'kien/ctrlp.vim'
    Bundle 'rking/ag.vim'
    Bundle 'bling/vim-airline'
    Bundle 'vim-airline/vim-airline-themes'
    Bundle 'devnul1/heman'
    Bundle 'majutsushi/tagbar'
    Bundle 'godlygeek/tabular'
    Bundle 'sandeepcr529/Buffet.vim'
    Bundle 'rbgrouleff/bclose.vim'
    Bundle 'terryma/vim-multiple-cursors'
    Bundle 'marijnh/tern_for_vim'
    Bundle 'SirVer/ultisnips'
    Bundle 'sniphpets/sniphpets'
    Bundle 'sniphpets/sniphpets-common'

    " Generally helpful plugins
    Bundle 'mbbill/undotree'

    " Development
    Bundle 'sheerun/vim-polyglot'
    Bundle 'vim-syntastic/syntastic'
    Bundle 'vim-ruby/vim-ruby'
    Bundle 'hallettj/jslint.vim'
    Bundle 'walm/jshint.vim'
    Bundle 'digitaltoad/vim-jade'
    Bundle 'guileen/vim-node'
    Bundle 'maksimr/vim-jsbeautify'
    Bundle 'einars/js-beautify'
    Bundle 'jelera/vim-javascript-syntax'
    Bundle 'nathanaelkane/vim-indent-guides'
    Bundle 'Raimondi/delimitMate'
    Bundle 'scrooloose/nerdcommenter'
    Bundle 'editorconfig/editorconfig-vim'
    Bundle 'phpactor/phpactor'
    Bundle 'udalov/kotlin-vim'
    Bundle 'ntpeters/vim-better-whitespace'
    Bundle 'mustache/vim-mustache-handlebars'
    Bundle 'phan/phan'

    " C/C++ Development
    Bundle 'Rip-Rip/clang_complete'

    " Go Development
    Bundle 'fatih/vim-go'
    Bundle 'nsf/gocode', {'rtp': 'vim/'}

    " PHP Development 
    Bundle 'sumpygump/php-documentor-vim'
    Bundle 'spf13/PIV'
    Bundle 'stephpy/vim-php-cs-fixer'
    Bundle 'vim-php/vim-php-refactoring'
    "Bundle 'm2mdas/phpcomplete-extended'
    Bundle 'arnaud-lb/vim-php-namespace'
    Bundle 'StanAngeloff/php.vim'
    Bundle 'tomphp/vim-phpdoc'
    Bundle 'mikehaertl/pdv-standalone'
    Bundle 'Shougo/vimproc.vim', {
         \ 'build' : {
         \     'windows' : 'tools\\update-dll-mingw',
         \     'cygwin' : 'make -f make_cygwin.mak',
         \     'mac' : 'make -f make_mac.mak',
         \     'linux' : 'make',
         \     'unix' : 'gmake',
         \    },
         \ }
    Bundle 'Shougo/unite.vim'
    Bundle 'docteurklein/php-getter-setter.vim'

    " Twig/Slim
    Bundle 'lunaru/vim-twig'
    Bundle 'slim-template/vim-slim'

    " Version Control
    Bundle 'airblade/vim-gitgutter'

    " Themes
    Bundle 'vim-scripts/Solarized'
    Bundle 'fatih/molokai'
    Bundle 'nanotech/jellybeans.vim'
    Bundle 'jpo/vim-railscasts-theme'
    Bundle 'lokaltog/vim-distinguished'
    Bundle 'chriskempson/vim-tomorrow-theme'
    Bundle 'jacekd/vim-iawriter'
    Bundle 'rakr/vim-two-firewatch'
    Bundle 'dracula/vim'
    Bundle 'kamwitsta/nordisk'
    Bundle 'joshdick/onedark.vim'
    Bundle 'skreek/skeletor'

    " Writing plugins
    Bundle 'plasticboy/vim-markdown'
    Bundle 'dahu/vim-asciidoc'
    Bundle 'nelstrom/vim-markdown-folding'
    Bundle 'mikewest/vimroom'
    Bundle 'reedes/vim-pencil'
    Bundle 'reedes/vim-colors-pencil'
    Bundle 'reedes/vim-wordy'
    Bundle 'reedes/vim-lexical'
    Bundle 'kana/vim-textobj-user'
    Bundle 'reedes/vim-textobj-quote'
    Bundle 'reedes/vim-textobj-sentence'
    Bundle 'reedes/vim-litecorrect'
    " Add proof-reading and grammar support https://www.languagetool.org
    Bundle 'vim-scripts/LanguageTool'
    Bundle 'rhysd/vim-grammarous'
    Bundle 'laktek/distraction-free-writing-vim'
    Bundle 'christoomey/vim-titlecase'
    Bundle 'vim-voom/VOoM'
    Bundle 'Rykka/riv.vim'
    Bundle 'matcatc/vim-asciidoc-folding'
" }
call vundle#end()

filetype plugin indent on " Automatically detect file types.

let mapleader=","

" General Configuration Settings {

    " gvim {
        " Clean up the GUI in Gvim & MacVim
        if has("gui_running")
            set guifont=Monaco:h12 
            set guioptions-=r         " Remove right scrollbar
            set guioptions-=T         " Remove toolbar
            set lines=40 columns=100  " UI size
            set linespace=2 
            set background=dark
            colorscheme pencil
            set guicursor+=n-v-c:blinkon0   " disable blinking in the cursor
            set guicursor+=i:blinkwait10
            set guicursor+=a:blinkon0       " disable blinking cursor in all modes
        else 
          set background=dark
          colorscheme Tomorrow-Night
        endif
    " }

    " Clear the search results using ESC
    nnoremap <esc> :noh<return><esc>

    " Automatically set the background based on the time of day
    " Thanks to Benjamin Tan: http://goo.gl/UcErBh
    let hour = strftime("%H")
    if 6 <= hour && hour < 18
      set background=light
    else
      set background=dark
    endif

    syntax on                 " syntax highlighting
    set mouse=a               " automatically enable mouse usage
    "set virtualedit=all       " allow for cursor beyond last character
    set history=1000          " Store a ton of history (default is 20)
    set hidden                " allow buffer switching without saving
    set number                " display line numbers
    set cursorline            " highlight the current line
    set expandtab
    set modelines=0
    set shiftwidth=2
    set clipboard=unnamed
    set synmaxcol=128
    set ttyscroll=10
    set encoding=utf-8        " set file encoding to utf-8, the only encoding to use
    set tabstop=4
    set nowrap                " Don't wrap text by default
    set nowritebackup
    set noswapfile
    set nobackup
    set hlsearch
    set ignorecase
    set smartcase
    set smarttab
    set tags=tags
    set expandtab
    set autoindent
    set showcmd
    scriptencoding utf-8
    set encoding=utf-8
    set autowrite             " Save on buffer switch
    set autoread              " Check when a file is edited by another program
    set visualbell            " disable beeping and visual notification

" }

" Plugins {
    " pdv-standalone {
        " use "" as parameter to turn tag off
        let g:pdv_cfg_php4guess=0
        let g:pdv_cfg_Package=" "
        let g:pdv_cfg_Author=" "
        let g:pdv_cfg_Version=" "
    " }
    
    " phpactor Omni-completion {
        autocmd FileType php setlocal omnifunc=phpactor#Complete

        " Include use statement
        map <Leader>u :call phpactor#UseAdd()<CR>
        map <Leader>o :call phpactor#GotoType()<CR>
        map <Leader>pd :call phpactor#OffsetTypeInfo()<CR>
        map <Leader>i :call phpactor#ReflectAtOffset()<CR>
        map <Leader>pfm :call phpactor#MoveFile()<CR>
        map <Leader>pfc :call phpactor#CopyFile()<CR>
        map <Leader>tt :call phpactor#Transform()<CR>

        " Show information about "type" under cursor including current frame
        nnoremap <silent><Leader>d :call phpactor#OffsetTypeInfo()<CR>
    " }

    " airline {
        " don't enable the tabline (seems a bit confusing)
        let g:airline#extensions#tabline#enabled = 0
        let g:airline_section_y = 'BN: %{bufnr("%")}'
        let g:airline#extensions#branch#enabled = 0
        let g:airline#extensions#hunks#enabled = 0
    " }

    " padawan {
        let $PATH=$PATH . ':' . expand('~/.composer/vendor/bin')
        let g:padawan#composer_command = "/usr/local/bin/composer"
    " }

    " CtrlP {
        let g:ctrlp_max_files=50000
    " }
    
    " UltiSnips {
    " Trigger configuration. Do not use <tab> if you use
    " https://github.com/Valloric/YouCompleteMe.
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<c-b>"
    let g:UltiSnipsJumpBackwardTrigger="<c-z>""
    " }

    " NERDTree
        nmap <leader>n :NERDTreeToggle<CR>
        let NERDTreeHighlightCursorline=1
        let NERDTreeIgnore = ['tmp', '.yardoc', 'pkg']
    " }
    
    " vim-markdown {
    "   Highlight YAML frontmatter as used by Jekyll 
        let g:vim_markdown_frontmatter=1        
    " }

    " Syntastic
        "let g:syntastic_mode_map = { 'mode': 'passive' }
        "let g:syntastic_ruby_exec = '~/.rvm/rubies/ruby-2.0.0-p0/bin/ruby'
    " }

" }

" Automatic settings {
    " Remove whitespace at the end of the line for certain file extensions 
    autocmd BufWritePre *.rb :%s/\s\+$//e
    autocmd BufWritePre *.go :%s/\s\+$//e
    autocmd BufWritePre *.haml :%s/\s\+$//e
    autocmd BufWritePre *.html :%s/\s\+$//e
    autocmd BufWritePre *.scss :%s/\s\+$//e
    autocmd BufWritePre *.slim :%s/\s\+$//e
    autocmd BufWritePre *.rst :%s/\s\+$//e
    autocmd BufWritePre *.php :%s/\s\+$//e
    "autocmd BufEnter *.md :call SetMarkdownOptions()

    au BufNewFile * set noeol
    au BufRead,BufNewFile *.go set filetype=go

    " Configurations for Markdown files
    autocmd BufNewFile,BufReadPost *.md set filetype=markdown
    "
    " Automatically remove trailing whitespace on Markdown files
    autocmd BufWritePre *.md :%s/\s\+$//e

    " Also setting text files as Markdown, effectively, as the same rules
    " largely apply
    autocmd BufNewFile,BufReadPost *.txt set filetype=markdown

    " Configurations for PHP files
    autocmd BufNewFile,BufReadPost *.php set filetype=php
    "autocmd BufEnter *.php :call SetPhpOptions()

    " No show command
    autocmd VimEnter * set nosc

    " enable spell checking in git commit messages
    autocmd FileType gitcommit setlocal spell

    " PHP settings {
        " PHP shortcuts
        "autocmd FileType php inoremap <C--> ->
        "autocmd FileType php inoremap <C-=>> =>

        " phpDoc
        autocmd FileType php inoremap <buffer> <LocalLeader>d <ESC>:call PhpDocSingle()<CR>i 
        autocmd FileType php nnoremap <buffer> <LocalLeader>d :call PhpDocSingle()<CR> 
        autocmd FileType php vnoremap <buffer> <LocalLeader>d :call PhpDocRange()<CR>
        autocmd FileType php nnoremap <buffer> <F5> :!php -l %<CR>

        " PHP Namespace remaps
        autocmd FileType php noremap <buffer> <LocalLeader>n :call PhpInsertUse()<CR>
        autocmd FileType php noremap <buffer> <LocalLeader>e :call PhpExpandClass()<CR>

        " PHP Parsing & Checking commands
        autocmd FileType php noremap <buffer> <C-M> :w!<CR>:!php %<CR>
        autocmd FileType php noremap <buffer> <LocalLeader>l :w!<CR>:!php -l %<CR>
        autocmd FileType php noremap <buffer> <LocalLeader>b :w!<CR>:!vendor/bin/behat<CR>
        autocmd FileType php noremap <buffer> <LocalLeader>u :w!<CR>:!vendor/bin/phpunit<CR>
        autocmd FileType php noremap <buffer> <LocalLeader>s :w!<CR>:!vendor/bin/phpspec run -v<CR>

        " Cucumber
        autocmd FileType cucumber noremap <buffer> <LocalLeader>b :w!<CR>:!vendor/bin/behat %<CR>

        autocmd FileType php nnoremap <buffer> <f8> :exe ':!phpctags --flags="+aim" --exclude=".git" --exclude="vendor/pdepend" --exclude="composer.phar" --sort=yes --memory=-1 --recurse=yes -f "' . g:project_tags .'" .'<CR>
        autocmd FileType php nnoremap <buffer> execute "set tags=" . g:project_tags

        autocmd FileType php setlocal ts=4 sts=4 sw=4

        " Strip trailing white space from .php files
        autocmd BufWritePre *.php :%s/\s\+$//e

        " Indentation rules
        autocmd FileType php set expandtab

        "autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

        " PHPDoc settings
        if !exists("g:pdv_cfg_Author")
            let g:pdv_cfg_Author = "Matthew Setter <matthew.setter@gmail.com>"
        endif

        " Set up syntax checker
        let g:syntastic_php_checkers=['php', 'vendor/bin/phpcs', 'vendor/bin/phpmd']

        " Refactoring
        let g:php_refactor_command='php ~/bin/refactor.phar'

        " CS Fixer
        let g:php_cs_fixer_path = "php-cs-fixer" 
        let g:php_cs_fixer_level = "all"       
        let g:php_cs_fixer_config = "default" 
        let g:php_cs_fixer_php_path = "php"     
        let g:php_cs_fixer_enable_default_mapping = 1
        let g:php_cs_fixer_dry_run = 0
        let g:php_cs_fixer_verbose = 1
    " }

    " Javascript {
        " 2 space indents
        autocmd FileType javascript setlocal ts=2 sts=2 sw=2
    " }

    " Coffeescript {
        " 2 space indents
        autocmd FileType coffee setlocal ts=2 sts=2 sw=2
    " }

    " HTML {
        " 2 space indents
        autocmd FileType html setlocal ts=2 sts=2 sw=2
    " }

    " GitGutter {
        " enable highlight of git changes
        let g:gitgutter_linehighlightseNable = 1
    " }

    " Go {
        au FileType go nmap <Leader>s <Plug>(go-implements)
        au FileType go nmap <Leader>i <Plug>(go-info)
        au FileType go nmap <Leader>gd <Plug>(go-doc)
        au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
        au FileType go nmap <Leader>gb <Plug>(go-doc-browser)
        au FileType go nmap <leader>r <Plug>(go-run)
        au FileType go nmap <leader>b <Plug>(go-build)
        au FileType go nmap <leader>t <Plug>(go-test)
        au FileType go nmap <leader>c <Plug>(go-coverage)
        au FileType go nmap <Leader>ds <Plug>(go-def-split)
        au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
        au FileType go nmap <Leader>dt <Plug>(go-def-tab)
        let g:go_highlight_functions = 1
        let g:go_highlight_methods = 1
        let g:go_highlight_structs = 1
        let g:go_highlight_operators = 1
        let g:go_highlight_build_constraints = 1
    " }
" }

" Key (re)Mappings {

    " Quick ESC
    imap jj <ESC>

    " Jump to the next row on long lines
    map <Down> gj
    map <Up>   gk
    nnoremap j gj
    nnoremap k gk

    " Remove all trailing whitespace by pressing F9
    nnoremap <F9> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

    " Resize buffers
    if bufwinnr(1)
      nmap Ä <C-W><<C-W><
      nmap Ö <C-W>><C-W>>
      nmap ö <C-W>-<C-W>-
      nmap ä <C-W>+<C-W>+
    endif

    " Map the space bar to open/close a fold
    nnoremap <Space> za

    " format the entire file
    nmap <leader>fef ggVG=

    " Map the buffer list
    nmap <leader>l :ls
    
    " Fast saves
    nmap <leader>w :w!<cr>

    " Edit todo list for project
    nmap ,todo :e todo.txt<cr>

    " Edit composer.json
    nmap <leader>lc :e composer.json<cr>

    "Load the current buffer in Chrome
    nmap ,c :!open -a Google\ Chrome<cr>

    " Open new buffers
    nmap <leader>s<left>   :leftabove  vnew<cr>
    nmap <leader>s<right>  :rightbelow vnew<cr>
    nmap <leader>s<up>     :leftabove  new<cr>
    nmap <leader>s<down>   :rightbelow new<cr>

    " Not quite working yet.
    nmap <leader>l <Plug>Ysurroundiw]%a(<C-R>*)<Esc>
    vmap <leader>l <Plug>Vsurroundiw]%a(<C-R>*)<Esc>

    " Tab between buffers
    noremap <tab> <c-w><c-w>

    " Switch between last two buffers
    nnoremap <leader><leader> <C-^>

    " Toggle numbers.vim
    nnoremap <F3> :NumbersToggle<CR>

    " bind K to grep word under cursor
    nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
                    
"  }

" Go programming
set rtp+=/usr/local/Cellar/go/1.0.3/misc/vim

" Quit with :Q
command -nargs=0 Quit :qa!

" vim-pencil configuration
" For further options see https://github.com/reedes/vim-pencil
" let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
augroup pencil
  autocmd!
  "
  " Apply for Markdown and reStructuredText
  autocmd FileType markdown,mkd,md,rst,asciidoc call pencil#init({'wrap': 'soft'})
                              \ | call lexical#init()
                              \ | call litecorrect#init()
                              \ | call textobj#quote#init()
                              \ | call textobj#sentence#init()
  autocmd FileType markdown,mkd,md call SetMarkdownOptions() 
  autocmd FileType rst call SetRestructuredTextOptions() 
  autocmd FileType c,h call SetCOptions() 
  autocmd FileType go       call SetGoOptions()
  autocmd FileType Makefile call SetMakefileOptions() 
  autocmd FileType text            call pencil#init({'wrap': 'soft'})

augroup END

  " Highlight words to avoid in tech writing
  " =======================================
  "
  "   obviously, basically, simply, of course, clearly,
  "   just, everyone knows, However, So, easy

  "   http://css-tricks.com/words-avoid-educational-writing/

  highlight TechWordsToAvoid ctermbg=red ctermfg=white
  function! MatchTechWordsToAvoid()
      match TechWordsToAvoid /\c\<\(obviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however\|so,\|easy\)\>/
  endfunction
  autocmd BufWinEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
  autocmd InsertEnter * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
  autocmd InsertLeave * match TechWordsToAvoid /\cobviously\|basically\|simply\|of\scourse\|clearly\|just\|everyone\sknows\|however,\|so,\|easy/
  autocmd BufWinLeave * call clearmatches()

function SetGoOptions()
  if has("gui_running")
    colorscheme Tomorrow-Night-Eighties
    set guifont=InputMono:h14
    set guioptions-=r
    set guioptions-=T
    set linespace=2
  endif
endfunction

function SetCOptions()
  if has("gui_running")
    set background=dark
    colorscheme solarized
    set guifont=InputMono:h12
    set guioptions-=r
    set guioptions-=T
    set linespace=2
  endif
  let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'
  let g:clang_use_library      = 1
  let g:clang_auto_select      = 0
  let g:clang_complete_auto    = 1
  let g:clang_complete_copen   = 1
  let g:clang_complete_macros  = 1
  let g:clang_complete_patters = 1
  set completeopt=menu,longest
  let g:clang_auto_user_options = "-I/usr/include/c++/4.6, .clang_complete"
  let g:clang_snippets = 1
  let g:clang_snippets_engine = 'clang_complete'
endfunction

function SetIaWriterOptions()
  "
  " Last Change: 2011/12/11
  " Maintainer:  Jacek Dominiak <doj (at) ptpbs (dot) com>
  "
  " Description: Vim color file
  "

  set background=light
  hi clear
  if exists("syntax_on")
    syntax reset
  endif

  let g:colors_name="iawriter"

  hi Cursor       guifg=fg   		guibg=#54D4FF 
  hi Normal       guifg=#424242 guibg=#f5f6f6          ctermfg=black    ctermbg=white
  hi DiffAdd                    guibg=#c0ffe0                           ctermbg=3
  hi DiffDelete   guifg=#ff8097 guibg=#ffe0f7          ctermfg=4        ctermbg=5
  hi DiffChange                 guibg=#cfefff                           ctermbg=9
  hi DiffText                   guibg=#bfdfff gui=NONE                  ctermbg=6     cterm=NONE
  hi NonText      guifg=bg			guibg=bg 			gui=NONE ctermfg=darkblue
  hi SpecialKey   guifg=grey50  guibg=grey86  gui=NONE ctermfg=darkblue
  hi LineNr       guifg=bg 			guibg=bg          ctermfg=darkblue
  hi Search                     guibg=#fff999
  hi StatusLine   guifg=bg      guibg=#333333 gui=NONE ctermfg=bg       ctermbg=black cterm=NONE
  hi StatusLineNC guifg=bg      guibg=grey40  gui=NONE ctermfg=bg       ctermbg=black cterm=NONE
  hi Visual       guifg=fg      guibg=#ccccdd gui=NONE
  hi VisualNOS    guifg=bg      guibg=#ccccdd gui=NONE

  " syntax highlighting groups
  hi Comment      guifg=#000099 guibg=bg               ctermfg=darkblue
  hi String       guifg=fg 			guibg=#e0e4cc          ctermfg=darkred 
  hi Constant     guifg=#c033ff guibg=bg               ctermfg=darkmagenta
  hi Statement    guifg=#737373 guibg=bg               ctermfg=black                  cterm=NONE
  hi PreProc      guifg=#335588 guibg=bg      gui=NONE ctermfg=blue
  hi Type         guifg=#338855 guibg=bg      gui=NONE ctermfg=darkgreen
  hi StorageClass guifg=#990000 guibg=bg               ctermfg=red
  hi Special      guifg=#6688ff guibg=bg               ctermfg=darkcyan
  hi Function     guifg=#117777 guibg=bg               ctermfg=red
  hi Title    		guifg=black   guibg=bg               ctermfg=black                  cterm=bold

  " showpairs plugin
  "   for cursor on paren
  hi ShowPairsHL                guibg=#c4ffc4                           ctermbg=lightgreen
  "   for cursor between parens
  hi ShowPairsHLp               guibg=#c4f0c4                           ctermbg=lightgreen
  "   unmatched paren
  hi ShowPairsHLe               guibg=#ff5555                           ctermbg=red

  " settings for Vim7
  if version >= 700
    hi MatchParen               guibg=#c4ffc4                                             ctermbg=lightgreen
    " Spell
    hi SpellBad  	guifg=fg               gui=undercurl               ctermfg=red 		                   cterm=underline
    hi SpellRare  guifg=magenta          gui=undercurl               ctermfg=magenta                   cterm=underline
    hi SpellCap 	guifg=fg               gui=undercurl 							 guisp=#22cc22                     cterm=underline
    " Completion menu
    hi Pmenu                    guibg=#ffffcc                                             ctermbg=yellow
    hi PmenuSel                 guibg=#ddddaa                                             ctermbg=lightcyan  cterm=NONE
    hi PmenuSbar                guibg=#999966                                             ctermbg=lightcyan
    " Tab line
    hi TabLine                  guibg=grey70                                                                 cterm=underline
    hi TabLineSel                             gui=NONE                                                       cterm=NONE
    hi TabLineFill guifg=black  guibg=grey80                                                                 cterm=underline
  endif
endfunction

function SetRestructuredTextOptions()
  au BufRead,BufNewFile *.rst setlocal textwidth=80
  autocmd FileType gitcommit setlocal spell
  setlocal spell spelllang=en_us
endfunction

function SetMarkdownOptions()
  setlocal spell spelllang=en_us
  nmap <leader>l <Plug>Ysurroundiw]%a(<C-R>*)<Esc>
endfunction

function SetPhpOptions()
  colorscheme Tomorrow-Night
endfunction

function SetMakefileOptions()
  colorscheme Tomorrow-Night
  set noexpandtab shiftwidth=4 softtabstop=0
endfunction

" Override grip with The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" virtual tabstops using spaces
" link: http://vim.wikia.com/wiki/Toggle_between_tabs_and_spaces
let my_tab=4
execute "set shiftwidth=".my_tab
execute "set softtabstop=".my_tab
set expandtab
" allow toggling between local and default mode
function! TabToggle()
  if &expandtab
    set shiftwidth=4
    set softtabstop=0
    set noexpandtab
  else
    execute "set shiftwidth=".g:my_tab
    execute "set softtabstop=".g:my_tab
    set expandtab
  endif
endfunction
nmap <F9> mz:execute TabToggle()<CR>'z

let $PYTHONHOME="/Library/Frameworks/Python.framework/Versions/3.6"
set pythonthreedll=/Library/Frameworks/Python.framework/Versions/3.6/lib/libpython3.6m.dylib
