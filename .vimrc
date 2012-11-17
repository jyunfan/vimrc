set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab "Expand tab as white spaces

" Javascript community looks like 2-space indent
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

"set foldmethod=syntax
set ruler

syntax on

:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

" Highlight tab and tail spaces
:set list listchars=tab:>-,trail:-

" To set up syntax folding automatically for XML files put the following lines in your .vimrc
"let g:xml_syntax_folding=1
"au FileType xml setlocal foldmethod=syntax

"colorscheme desert
colorscheme ir_black
"colorscheme moria_jftsai
highlight SpecialKey ctermfg=0

"set columns=100
"set lines=25
set guifont=Source_Code_Pro:h20
"set background=dark
set diffopt+=iwhite     "ignore white space when diff

set laststatus=2
if has("statusline")
  set statusline=%<%f\ %h%m%r%=%k[%{(&fenc\ ==\\"\"?&enc:&fenc).(&bomb?\",BOM\":\"\")}]\ %-12.(%l,%c%V%)\ %P
endif

call pathogen#infect()
filetype plugin indent on

" add/remove comment
au filetype perl    let b:comment_string = '#'
au filetype python  let b:comment_string = '#'
function! MyComment()
    silent exec 's/^/' . b:comment_string . ' /e'
endfunction

function! MyUnComment()
    silent exec 's/^' . b:comment_string . ' //e'
endfunction

"nnoremap <c-r> :call MyComment()<CR>
"vnoremap <c-r> :call MyComment()<CR>

"nnoremap <c-d> :call MyUnComment()<CR>
"vnoremap <c-d> :call MyUnComment()<CR> 
