
" get and edit vimrc
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" ignore white space when diff
set diffopt+=iwhite     

" don't really understand this
set laststatus=2
if has("statusline")
  set statusline=%<%f\ %h%m%r%=%k[%{(&fenc\ ==\\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %-12.(%l,%c%V%)\ %P
endif

" Oops.  Forgot what is this.
call pathogen#infect()

filetype plugin indent on

" Highlight tab and tail spaces
set list listchars=tab:>-,trail:-

"--- color scheme
set background=dark
colorscheme solarized


" Set font for my MacVim
set guifont=Source_Code_Pro:h20

"--- tab and indent
set smartindent
set smarttab
set tabstop=4
set shiftwidth=4

" It looks like Javascript community prefer 2-space indent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" tab is really confusing me
set expandtab
"---

set ruler
syntax on
