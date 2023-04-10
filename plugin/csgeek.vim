autocmd BufNewFile * :call LoadFileTemplate()
autocmd FileType mma :call SetupMathematica()

" Mappings
map <C-Tab> :tabnext<CR>
map <C-T> :tabnew<CR>
map <S-Right> :tabnext<CR>
map <S-Left> :tabprev<CR>
nmap <Space> :tabnext<CR>
nmap nogui  :call NoGUI()<CR>
nmap gui    :call ResetGUI()<CR>

function! NoGUI()
    set guioptions-=T
    set guioptions-=m  "hides menu bar
    "let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
endfunction

function! ResetGUI()
    set guioptions+=T
    set guioptions+=m  "hides menu bar
    "let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
endfunction

function! LoadFileTemplate()
  silent! 0r ~/.vim/template/%:e.tmpl
  "syn match vimTemplateMarker "&lt;+.\++&gt;" containedin=ALL
  "hi vimTemplateMarker guifg=#67a42c guibg=#112300 gui=bold
endfunction

" Style
"imap {{ {<CR><CR>}<UP><RIGHT>
set ts=4
set sw=4
set autoindent
set smartindent
set expandtab


"JSON Fix.
"dependency: sudo apt-get intall libjson-xs-perl
map <leader>jt  <Esc>:%!json_xs -f json -t json-pretty<CR>
"XML fix
"dependency: sudo apt-get install libxml2-utils
map <leader>xml  <Esc>:%!xmllint --format %<CR>
