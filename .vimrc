"======================
" Vundle // Manage All Add-ons
"======================
set encoding=utf-8
set nocompatible    " be improved
filetype off        " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!

"=====From GitHub======
" Basic // vunder
Bundle 'gmarik/vundle'
" Colorscheme // solarized
Bundle 'altercation/vim-colors-solarized.git'
" Python // syntax
Bundle 'scrooloose/syntastic.git'
Bundle 'jcrocholl/pep8'
" Python // keyboard of Tab
Bundle 'ervandew/supertab'
" Latex suit
Bundle 'gerw/vim-latex-suite'
" Tag list 
Bundle 'ctags.vim'
" Calendar
Bundle 'mattn/calendar-vim'
" NERD_tree
Bundle 'scrooloose/nerdtree.git'
" Markdown
Bundle 'plasticboy/vim-markdown'
" Indentation
Bundle 'nathanaelkane/vim-indent-guides.git'
" ZenCoding for HTML/CSS
Bundle 'mattn/emmet-vim'
" Power line for the state line
Bundle 'Lokaltog/vim-powerline'
" Vim signature
" Bundle 'kshenoy/vim-signature'
" NERD commenter
Bundle 'scrooloose/nerdcommenter'
" Buff explorer
Bundle 'fholgado/minibufexpl.vim'
" Easy motion
Bundle 'Lokaltog/vim-easymotion'
" Vim Org-mode
Bundle 'jceb/vim-orgmode'
" Speed dating
Bundle 'tpope/vim-speeddating'
" Accelerated smooth scroll
Bundle 'yonchu/accelerated-smooth-scroll'
" Numbers
"Bundle 'myusuf3/numbers.vim'
" Unite
Bundle 'Shougo/unite.vim'
" Unite everything
Bundle 'sgur/unite-everything'

filetype plugin indent on    " required!
filetype plugin on
"======================
"======================

set background=dark
colorscheme solarized

let mapleader=';'

set gcr=a:block-blinkon0

set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

set guioptions-=m
set guioptions-=T

syntax on
set number
set ruler
set cursorline
set cursorcolumn
" set nowrap      Not to wrap a line
set hlsearch
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent

set list 
set listchars=tab:>-,trail:-
"-----------Folder method-----"
set foldmethod=syntax
set foldmethod=indent
set nofoldenable


map <silent> <F9> :TlistToggle<cr>
map  ca :Calendar<cr>
map  nw <C-W><C-W> 

"-----------Indent guides-----"
let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

"-----------Nerd tree---------"
map <C-n> : NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos='left'
let NERDTreeShowHidden=0
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

set laststatus=2
let g:Powerline_colorscheme='solarized256'

"----Spell check----
set spell spelllang=en_us
setlocal spell spelllang=en_us
highlight clear SpellBad
highligh SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

"-----------Latex suite---------"
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_MultiCompileFormate=''

"-----------Buff explorer---------"
map <C-b> :MBEToggler<CR>
map <C-Tab> :MBEbn<CR>
map <C-S-Tab> :MBEbp<CR>

"-----------Easy motion------------
let g:EasyMotion_Startofline = 0
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)

