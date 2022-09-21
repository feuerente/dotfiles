" vim:foldmethod=marker
" ~/.config/nvim/init.vim
"
" config for nvim
"

" Allows vim to look to the current dir for config files
set exrc

:let mapleader = ","

" dein.vim - plugin manager {{{
" -----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Add the dein installation directory into runtimepath
" Required: 
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')


"    Add Plugins {{{
"    --------------------------
  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  "   Completion framework
  call dein#add('Shougo/deoplete.nvim')
  "   Snippet support; Default snippet files
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  "   Nerdtree; Git support
  call dein#add('scrooloose/nerdtree')
" Not working      call dein#add('Xuyuanp/nerdtree-git-plugin')
  "   Visual indentation cues
  call dein#add('Yggdroot/indentLine')
  "   Thesaurus
  call dein#add('Ron89/thesaurus_query.vim')
  "   Grunvbox theme
  call dein#add('morhetz/gruvbox')
  "   Status/tabline for vim
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  "   Git wrapper for vim
  call dein#add('tpope/vim-fugitive')
  "   Make i3config look better
  call dein#add('mboughaba/i3config.vim')
  "   Ditraction-free wirting; centers text
  call dein#add('junegunn/goyo.vim')
  "   Note taking in vim
  call dein#add('xolox/vim-misc')
  call dein#add('xolox/vim-notes')
  "   Markdown preview
  call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
					\ 'build': 'cd app & yarn install' })
  "   Vimpager
  call dein#add('rkitover/vimpager')
  "   Support for writing LaTeX
  call dein#add('lervag/vimtex')
  "
  "   Deb Icons
  " call dein#add('ryanoasis/vim-devicons')
  " Color preview         " Background colors not working
  "call dein#add('https://github.com/chrisbra/Colorizer')
"    -------------------------- }}}

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" Install plugins on startup.
if dein#check_install()
  call dein#install()
endif
" -----------------------------}}}

" Plugin settings {{{
" -----------------------------

"    deoplete {{{
"    --------------------------
let g:deoplete#enable_at_startup = 1
call deoplete#custom#option('smart_case', v:true)
"    -------------------------- }}}

"    neosnippet {{{
"    --------------------------
" Still don't know if everything works with neosnippet (especially <C-k>)
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets' behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
  \ pumvisible() ? "\<C-n>" :
  \ neosnippet#expandable_or_jumpable() ?
  \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Expand the completed snippet trigger by <CR>.
imap <expr><CR>
\ (pumvisible() && neosnippet#expandable()) ?
\ "\<Plug>(neosnippet_expand)" : "\<CR>"

" Tell neosnippet about other snippets
"let g:neosnippet#snippets_directory='~/.vim/snippets'
"    -------------------------- }}}

"    nerdtree{{{
"    --------------------------
nnoremap <silent> <leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <leader>v :NERDTreeFind<CR>
"    -------------------------- }}}

"    Thesaurus {{{
"    --------------------------
nnoremap <Leader>s :ThesaurusQueryReplaceCurrentWord<CR>
let g:tq_enabled_backends=["woxikon_de", "thesaurus_com", "openoffice_en", "datamuse_com", "openthesaurus_de"]
let g:tq_language=['en', 'de']
"    -------------------------- }}}

"    indentline {{{
"    --------------------------
let g:indentLine_char = '▏'
let g:indentLine_color_term = 236
"    -------------------------- }}}

"    Grunvbox theme {{{
"    --------------------------
if (has("termguicolors"))
  set termguicolors
endif

let g:gruvbox_contrast_dark = 'medium'
colorscheme gruvbox
"    -------------------------- }}}

"    vim-notes{{{
"    --------------------------
let g:notes_directories = ['~/repos/notes']
"    -------------------------- }}}

"    markdow-preview{{{
"    --------------------------
let g:mkdp_refresh_slow = 1
"    -------------------------- }}}

" -----------------------------}}}

" File specific mappings {{{
" -----------------------------
autocmd FileType tex setlocal spell
autocmd FileType tex setlocal conceallevel=0

autocmd FileType md setlocal spell
autocmd FileType md setlocal conceallevel=0

au BufNewFile,BufRead /*.rasi setf css
" -----------------------------}}}

" Mappings {{{
" -----------------------------
" Make space toggle foldings
nnoremap <space> za

" Nicer window handling
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"This unsets the 'last search pattern' register by hitting return
nnoremap <silent> <ESC> :noh<CR><CR>

" Complete brackets
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap () ()
" inoremap [ []<left>
" inoremap [] []
 inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Remove all unnecessary whitespaces
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
" -----------------------------}}}

" General vim settings {{{
" -----------------------------
" UTF-8 Support
set encoding=utf-8

" Set line numbers
set number
set relativenumber

" Use the system clipboard
set clipboard+=unnamedplus

set shiftwidth=4
set softtabstop=4

" The character at the beginning of a wrapped line.
set showbreak=↪\ 

" Strings to use in 'list' mode. Possible option: "eol:"↲
set listchars=tab:→\ ,trail:•,extends:⟩,precedes:⟨
set list

" Highlight column number 110
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" Search settings
set ignorecase
set smartcase
set incsearch

" Spell checking
set spelllang=de,en

set mouse=a

set inccommand=nosplit

set updatetime=2000
" -----------------------------}}}

set secure " does not applie to configs owned by you

" Unused configration{{{
" -----------------------------

"    Colorizer{{{
"    --------------------------
"let g:colorizer_auto_filetype='css,html'
"    -------------------------- }}}
" -----------------------------}}}
