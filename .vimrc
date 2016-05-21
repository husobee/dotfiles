colorscheme elflord

set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOROOT/misc/vim

call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'Syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vimspell'
Plugin 'fugitive.vim'
Plugin 'VimClojure'
Plugin 'rust-lang/rust.vim'
Plugin `rhysd/vim-clang-format'
call vundle#end()
filetype plugin indent on

syntax on

set expandtab
set tabstop=4
set shiftwidth=4
set number

set et
set sw=4
set softtabstop=4
set tabstop=4
set smarttab
set smartindent
set autoindent
set ignorecase
set smartcase
set noerrorbells
set t_vb=
set list listchars=tab:>-,trail:.,extends:>
set errorformat=%m\ in\ %f\ on\ line\ %l
set comments=s1:/**,mb:*,ex:*/
set backspace=indent,eol,start

let g:go_fmt_command = "goimports"
au FileType go au BufWritePre <buffer> GoFmt

match ErrorMsg '\%>80v.\+'

" Automatically determine indenting using fuzzy matching. e.g. the a line
" starting "(with-"
" " will be indented two spaces.
let vimclojure#FuzzyIndent=1
"
" " Highlight built-in functions from clojure.core and friends
let vimclojure#HighlightBuiltins=1
"
" " Highlight functions from contrib
let vimclojure#HighlightContrib=1
"
" " As new symbols are identified using VimClojure's dynamic features,
" automatically
" " highlight them.
let vimclojure#DynamicHighlighting=1
"
" " Color parens so they're easier to match visually
let vimclojure#ParenRainbow=1

"rust autoformatting
let g:rustfmt_autosave = 1

"clang autoformatting
let g:clang_format#style_options = {
    \ "BasedOnStyle": "LLVM",
    \ "IndentWidth": "8",
    \ "UseTab": "Always",
    \ "BreakBeforeBraces": "Linux",
    \ "AllowShortIfStatementsOnASingleLine": "false",
    \ "IndentCaseLabels": "false"}

autocmd FileType c ClangFormatAutoEnable
